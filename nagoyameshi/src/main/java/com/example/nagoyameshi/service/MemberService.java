package com.example.nagoyameshi.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.nagoyameshi.entity.Member;
import com.example.nagoyameshi.entity.Role;
import com.example.nagoyameshi.form.MemberEditForm;
import com.example.nagoyameshi.form.SignupForm;
import com.example.nagoyameshi.repository.MemberRepository;
import com.example.nagoyameshi.repository.RoleRepository;


@Service
public class MemberService {
	private final MemberRepository memberRepository;
	private final RoleRepository  roleRepository;
	private final PasswordEncoder passwordEncoder;
	
	public MemberService(MemberRepository memberRepository, RoleRepository  roleRepository, PasswordEncoder passwordEncoder) {
		this.memberRepository = memberRepository;
		this.roleRepository = roleRepository;
		this.passwordEncoder = passwordEncoder;
	}
	@Transactional
	public Member create(SignupForm signupForm) {
		Member member = new Member();
		Role role = roleRepository.findByName("ROLE_FREE_MEMBER");
		
		member.setName(signupForm.getName());
		member.setFurigana(signupForm.getFurigana());
		member.setPostalCode(signupForm.getPostalCode());
		member.setAddress(signupForm.getAddress());
		member.setPhoneNumber(signupForm.getPhoneNumber());
		member.setEmail(signupForm.getEmail());
		member.setPassword(passwordEncoder.encode(signupForm.getPassword()));
		member.setRole(role);
		member.setEnabled(false);
		
		return memberRepository.save(member);
	}
	
	@Transactional
	public void update(MemberEditForm memberEditForm) {
		Member member = memberRepository.getReferenceById(memberEditForm.getId());
		
		member.setName(memberEditForm.getName());
		member.setFurigana(memberEditForm.getFurigana());
		member.setPostalCode(memberEditForm.getPostalCode());
		member.setAddress(memberEditForm.getAddress());
		member.setPhoneNumber(memberEditForm.getPhoneNumber());
		member.setEmail(memberEditForm.getEmail());
		
		memberRepository.save(member);
	}
	
	@Transactional
	public void createSubscription(Member member) {
		Role role = roleRepository.findByName("ROLE_PAID_MEMBER");
		if(role == null) {
			throw new RuntimeException("登録できていません");
		}
		member.setRole(role);
		memberRepository.save(member);
		
		 // Spring Security コンテキストに新しいロールを反映
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Authentication newAuth = new UsernamePasswordAuthenticationToken(auth.getPrincipal(), auth.getCredentials(), AuthorityUtils.createAuthorityList("ROLE_PAID_MEMBER"));
        SecurityContextHolder.getContext().setAuthentication(newAuth);
		
	}
	
	@Transactional
	public void cancelSubscription(Member member) {
		Role role = roleRepository.findByName("ROLE_FREE_MEMBER");
		if(role == null) {
			throw new RuntimeException("登録削除できていません");
		}
		member.setRole(role);
		memberRepository.save(member);
		
		// Spring Security コンテキストに新しいロールを反映
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Authentication newAuth = new UsernamePasswordAuthenticationToken(auth.getPrincipal(), auth.getCredentials(), AuthorityUtils.createAuthorityList("ROLE_FREE_MEMBER"));
        SecurityContextHolder.getContext().setAuthentication(newAuth);
	}
	//メールアドレスが登録済みかどうかをチェックする
	public boolean isEmailRegistered(String email) {
		Member member = memberRepository.findByEmail(email);
		return member != null;
	}
	
	//パスワードとパスワード(確認用)の入力値が一致するかどうかをチェックする
	public boolean isSamePassword(String password, String passwordConfirmation) {
		return password.equals(passwordConfirmation);
	}
	
	//ユーザーを有効にする
	@Transactional
	public void enableMember(Member member) {
		member.setEnabled(true);
		memberRepository.save(member);
	}
	
	//メールアドレスが変更されたかどうかをチェックする
	public boolean isEmailChanged(MemberEditForm memberEditForm) {
		Member currentMember = memberRepository.getReferenceById(memberEditForm.getId());
		return !memberEditForm.getEmail().equals(currentMember.getEmail());
	}
	
	@Transactional
    public void updateRole(Map<String, String> paymentIntentObject) {
        String memberId = paymentIntentObject.get("memebrId");
        //findById(Long.parseLong(memberId))
        Member user = memberRepository.findById(Long.parseLong(memberId))
                .orElseThrow(() -> new RuntimeException("指定されたユーザーが見つかりません。"));

        String roleName = paymentIntentObject.get("roleName");

        Role role = roleRepository.findByName(roleName);
        user.setRole(role);

        // ユーザーを保存
        memberRepository.save(user);

        // ロールが変更されたので、セッションを無効化して再ログインさせる
        refreshAuthenticationByRole(roleName);
    }

    public void refreshAuthenticationByRole(String newRole) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(newRole));
        Authentication newAuth = new UsernamePasswordAuthenticationToken(authentication.getPrincipal(), authentication.getCredentials(), authorities);

        SecurityContextHolder.getContext().setAuthentication(newAuth);
    }
}
