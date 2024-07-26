-- categoriesテーブル --
INSERT IGNORE INTO categories (id, name) VALUES (1, 'ラーメン');
INSERT IGNORE INTO categories (id, name) VALUES (2, '居酒屋');
INSERT IGNORE INTO categories (id, name) VALUES (3, '焼肉');
INSERT IGNORE INTO categories (id, name) VALUES (4, '寿司');
INSERT IGNORE INTO categories (id, name) VALUES (5, 'イタリア料理');
INSERT IGNORE INTO categories (id, name) VALUES (6, 'フランス料理');
INSERT IGNORE INTO categories (id, name) VALUES (7, '中華料理');
INSERT IGNORE INTO categories (id, name) VALUES (8, 'しゃぶしゃぶ');
INSERT IGNORE INTO categories (id, name) VALUES (9, '焼き鳥');
INSERT IGNORE INTO categories (id, name) VALUES (10, '和食');
INSERT IGNORE INTO categories (id, name) VALUES (11, 'ステーキハウス');
INSERT IGNORE INTO categories (id, name) VALUES (12, 'うどん');
INSERT IGNORE INTO categories (id, name) VALUES (13, 'ひつまぶし');
INSERT IGNORE INTO categories (id, name) VALUES (14, 'カレー');
INSERT IGNORE INTO categories (id, name) VALUES (15, '揚げ物');

--  shopesテーブル --
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (1, 15, 'くし屋 鳥笑 Torikera','agemono.jpg','自家製の塩とタレを使った炭火焼鳥など、鶏料理を味わい尽くす専門店',4000, 5500,'17:00','23:00','491-0859','愛知県一宮市本町3-3-4 ','050-5486-4578','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (2, 6, 'restaurant KOCHUTEN','french.jpg','季節をちりばめた魅惑のランチコース',3000, 6000,'11:00','15:00','461-0004','名古屋市東区葵1-19-30 ','050-5488-3391','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (3, 7, '中国料理 千龍','tyuka.jpg','先代から受け継いだ味を守り抜く魅惑の中華料理を堪能！',3500, 4500,'17:00','23:00','453-0801','愛知県名古屋市中村区太閤1-1-17','050-5487-6954','日曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (4, 1, '一蘭','ramen.jpg','とんこつラーメンを世界一研究する会社',900, 1500,'10:00','18:00','460-0008','愛知県名古屋市中区栄3-12-22','050-1808-2630','火曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (5, 3, '炭火焼肉 煖','yakiniku.jpg','炭火焼で上質な和牛の旨味をギュッと凝縮！',5000, 10000,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅4-5-15','050-5492-9958','日曜日,祝日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (6, 11, 'ステーキハウス 彩 岡崎','steak.jpg','記念日コースに新しくプレミアムアニバーサリーコース誕生！',7000, 10000,'17:00','22:00','444-0924 ','愛知県岡崎市八帖北町27-2','050-5485-8263','木曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (7, 4, '鮨 まつもと','sushi.jpg','熟練の大将が握る本物の味をご堪能',3500, 8500,'17:00','22:00','450-0002','愛知県名古屋市中村区名駅3-26-8','050-5494-0413','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (8, 10, '和食・居酒屋 開','wasyoku.jpg','開は千原ジュニアのへべれけ(東海テレビ）で5月31日に放送されました。',5500, 8000,'17:00','22:00','453-0015 ','愛知県名古屋市中村区椿町12-21','050-5485-2927','日曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (9, 5, 'parcheggio（パルケッジョオ）','itarian.jpg','マルナカ駐車場にある隠れ家イタリアンバル',1000, 3000,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅4-15-2','050-5494-3429','日曜日,祝日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (10, 7, '中華割烹 わらじん 名駅','tyuka.jpg','名古屋や各地の市場・産地より活きのいい魚や野菜・肉などが毎朝新鮮入荷',5500, 9000,'18:00','23:00','450-0002','愛知県名古屋市中村区名駅4-18-13','050-5493-6875','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (11, 8, 'しゃぶしゃぶ・日本料理 木曽路','syabusyabu.jpg','厳選された牛肉と秘伝のごまだれが絶妙な味わいのしゃぶしゃぶ',2500, 6000,'17:00','22:00','450-0002','愛知県名古屋市中村区名駅4-10-25','050-5486-3023','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (12, 9, '全席個室 楽蔵うたげ 名駅４丁目店','yakitori.jpg','ネット予約は24時間、電話は朝10時より受付中',3000, 4500,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅4-5-18','050-5485-2335','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (13, 5, 'Osteria SOLUSSO','itarian.jpg','いつもより【ちょっと贅沢】を【好きなだけ】',2000, 4500,'17:00','23:00','451-0045','愛知県名古屋市中村区名駅4-15-2','050-5487-3258','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (14, 10, '鉄板焼と和食 宴','wasyoku.jpg','個室で『鉄板焼×和食』をご堪能いただけます',8000, 10000,'18:00','23:00','460-0003','愛知県名古屋市中区錦3-19-24','050-5486-2275','日曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (15, 3, '焼肉 澄','yakiniku.jpg','厳選したみかわ牛を使用！鮮度にこだわった絶品焼肉',4000, 6000,'17:00','22:00','458-0025','愛知県名古屋市緑区鳥澄1-520','050-5487-3539','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (16, 12, '山本屋総本家 松坂屋店','udon.jpg','名古屋名物煮込うどんの山本屋総本家',1000, 2000,'11:00','21:00','460-8430','愛知県名古屋市中区栄3-16-1','050-5488-9288','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (17, 6, 'フランス料理 ポーレット','french.jpg','アットホームな雰囲気のフランス料理店',6000, 10000,'11:00','15:00','444-0824','愛知県岡崎市上地町西田8-20','0564-52-1469','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (18, 13, 'ひつまぶし う家','unagi.jpg','厳選した鰻を炭火で丁寧に焼き上げる「特選鰻専門店」',3500, 7000,'11:00','14:00','467-0034','愛知県名古屋市瑞穂区弥富町桜ケ岡6','050-5486-1743','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (19, 14, 'インド・ネパール料理 RaRa','curry.jpg','本格的なインドカレーをご賞味あれ！',1000, 2500,'11:00','14:00','458-0817','愛知県名古屋市緑区諸の木1-1808','050-5494-5625','火曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (20, 1, '味仙','ramen.jpg','台湾ラーメンが味わえるお店',1000, 2000,'11:00','23:00','450-6002','愛知県名古屋市中村区名駅1-1-4','052-581-0330','火曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (21, 12, '御うどん 光史','udon.jpg','出汁がこだわりの創作うどんをお楽しみください！',1000, 2000,'11:00','15:00','480-1102','愛知県長久手市前熊一ノ井1-52','050-5494-2481','火曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (22, 4, '鮨 さわ田','sushi.jpg','研ぎ澄まされた技が輝く究極の味',3500, 9500,'17:00','23:00','453-0015','愛知県名古屋市中村区椿町14-6','050-5487-7232','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (23, 15, '串揚げともつ鍋　まったりや　千種','agemono.jpg','大好評！さっぱり！ヘルシー！！',4000, 5500,'17:00','23:00','464-0075 ','愛知県名古屋市千種区内山3-20-19','050-5493-4024','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (24, 13, 'ひつまぶし 備長 本店','unagi.jpg','東京・銀座でも認められた味の原点！',2500, 7000,'11:00','15:00','480-0144','愛知県丹羽郡大口町下小口5丁目176－1','050-5492-3271','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (25, 14, 'ダンネバード 一宮','curry.jpg','異国情緒あふれる店内で宴会・パーティー♪',2000, 4500,'11:00','15:00','491-0859','愛知県一宮市本町4-4-3','050-5494-3375','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (26, 5, 'セコンダバンビーナ','itarian.jpg','名駅にある大人気ピッツエリア♪雨の日も地下から上がってすぐの好立地',3000, 4500,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅3-23-14','050-5488-3391','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (27, 6, 'フランス料理 サンク','french.jpg','一皿一皿丁寧に…妥協しない本格フレンチ',4000, 10000,'11:00','15:00','461-0002','愛知県名古屋市東区代官町17-15 ','050-5487-9121','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (28, 8, '本格串焼とへぎそば 濱匠 名駅別邸','syabusyabu.jpg','個室居酒屋で北海道食材を中心に料理人が腕をふるった逸品を堪能',4000, 6000,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅2-41-3','050-5484-4386','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (29, 9, '串たつ 名駅西口店','yakitori.jpg','焼き鳥やもつ鍋、テイクアウト実施中です！',6000, 8000,'17:00','23:00','453-0014','愛知県名古屋市中村区則武1-4-2','052-454-0072','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (30, 3, '焼肉うしの家','yakiniku.jpg','極上の飛騨牛も取り揃え！職人による手切りでご提供',3000, 7500,'16:00','23:00','444-0811','愛知県岡崎市大西町奥長入2-3','050-5486-6197','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (31, 12, '丸亀製麺 尾張旭店','udon.jpg','手作り」「できたて」にこだわり、一杯のうどんに心を込めて。',1000, 2000,'11:00','22:00','488-0043 ','愛知県尾張旭市北本地ヶ原町1-56','0561-51-1317','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (32, 2, '海鮮居酒屋 大漁（たいりょう）','izakaya.jpg','どんなお客様にも喜んで頂く◆料理でお客様を笑顔に◎',3000, 6000,'17:00','23:00','450-0002','愛知県名古屋市中村区名駅4-11-1','050-5488-5575','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (33, 9, '個室焼鳥 風月 名古屋本店','yakitori.jpg','歓迎会・送別会での利用できます！日曜日も営業しております。',4000, 6000,'17:30','23:00','451-0042','愛知県名古屋市西区那古野1-18-13','050-5485-1446','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (34, 13, 'ひつまぶし河辺','unagi.jpg','三河一色をはじめ、各地の美味しい旬のうなぎを厳選。',2000, 4500,'11:00','15:00','483-8046','愛知県江南市高屋町花戸22-1','0587-81-6001','火曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (35, 11, 'サンセットウォーカーヒル','steak.jpg','伊勢湾を望むロケーションが魅力的な農家レストラン',2000, 5500,'11:00','21:00','460-0003','愛知県常滑市金山上白田130','050-5487-5821','木曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (36, 10, '和食処 南島','wasyoku.jpg','新鮮素材を使ったこだわりの和食。お祝い、法事など',5500, 7000,'17:00','21:00','497-0001','愛知県あま市七宝町沖之島東流17','052-441-3136','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (37, 8, '鶏しゃぶしゃぶと炭火焼のお店 鶏や鍋や なか山','syabusyabu.jpg','老舗精肉店から仕入れる銘柄鶏',4000, 6000,'16:00','23:00','450-0002','愛知県名古屋市中村区名駅3-15-11','050-5494-4601','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (38, 1, 'らぁ麺 紫陽花','ramen.jpg','行列も頷ける素材とこだわり。ラーメンブロガー出身店主が手掛ける鮮やかで神秘的な1品',1000, 2000,'11:30','21:00','454-0054','愛知県名古屋市中川区八剱町4-20-1　コーポ源１F','052-355-0787','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (39, 10, '和食・居酒屋 開','wasyoku.jpg','開は千原ジュニアのへべれけ(東海テレビ）で5月31日に放送されました。',5500, 8000,'17:00','22:00','453-0015 ','愛知県名古屋市中村区椿町12-21','050-5485-2927','日曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (40, 7, '中国料理 東天紅 KITTE名古屋店','tyuka.jpg','皆様にご満足頂ける老舗中華料理',5500, 8000,'17:00','22:00','453-0002','愛知県名古屋市中村区名駅1-1-1','050-5485-2414','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (41, 4, 'たか吉の鮨','sushi.jpg','その道を極めた大将が作る絶品握り寿司',3500, 9500,'17:00','23:00','450-0003','愛知県名古屋市中村区名駅南1-24-8','050-5485-4453','日曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (42, 14, 'DEARDEAR アイモール三好','curry.jpg','芳醇なスパイスの香りが食欲をかき立てる、インド・ベトナム・タイ料理のレストラン',2000, 4500,'11:00','15:00','470-0224','愛知県みよし市三好町青木88','050-5493-4453','不定休');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (43, 2, '世界の山ちゃん','izakaya.jpg','「幻の手羽先」のワンランク上の世界の山ちゃん',4000, 6500,'17:00','23:00','453-0014','愛知県名古屋市中村区則武1-2-3','050-5493-3185','日曜日,祝日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (44, 15, '創作串揚げ つだ','agemono.jpg','鮮度抜群の厳選食材を創作串揚げで楽しむ！',4000, 6000,'11:00','15:00','461-0001','愛知県名古屋市東区泉2-8-2','050-5492-9613','月曜日');
INSERT IGNORE INTO shops(id, category_id, name, image_name, description, low_price, heigh_price, open_time, close_time, postal_code, address, phone_number, holiday) VALUES (45, 11, 'FLARIE BBQ （フラリエ バーベキュー）','steak.jpg','都会のオアシス・フラリエで楽しむビア＆BBQ',8000, 10000,'15:00','23:00','460-0011','愛知県名古屋市中区大須4-4-1','050-5487-1966','不定休');

-- rolesテーブル --
INSERT IGNORE INTO roles (id, name) VALUES (1, 'ROLE_FREE_MEMBER');
INSERT IGNORE INTO roles (id, name) VALUES (2, 'ROLE_PAID_MEMBER');
INSERT IGNORE INTO roles (id, name) VALUES (3, 'ROLE_ADMIN');

-- membersテーブル --
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (1, '佐藤 太郎', 'サトウ タロウ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'taro.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, true);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (2, '佐藤 花子', 'サトウ ハナコ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'hanako.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 3, true);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (3, '佐藤 義勝', 'サトウ ヨシカツ', '638-0644', '奈良県五條市西吉野町湯川X-XX-XX', '090-1234-5678', 'yoshikatsu.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (4, '佐藤 幸美', 'サトウ サチミ', '342-0006', '埼玉県吉川市南広島X-XX-XX', '090-1234-5678', 'sachimi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (5, '佐藤 雅', 'サトウ ミヤビ', '527-0209', '滋賀県東近江市佐目町X-XX-XX', '090-1234-5678', 'miyabi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (6, '佐藤 正保', 'サトウ マサヤス', '989-1203', '宮城県柴田郡大河原町旭町X-XX-XX', '090-1234-5678', 'masayasu.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (7, '佐藤 真由美', 'サトウ マユミ', '951-8015', '新潟県新潟市松岡町X-XX-XX', '090-1234-5678', 'mayumi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (8, '佐藤 安民', 'サトウ ヤスタミ', '241-0033', '神奈川県横浜市旭区今川町X-XX-XX', '090-1234-5678', 'yasutami.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (9, '佐藤 章緒', 'サトウ アキオ', '739-2103', '広島県東広島市高屋町宮領X-XX-XX', '090-1234-5678', 'akio.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (10, '佐藤 祐子', 'サトウ ユウコ', '601-0761', '京都府南丹市美山町高野X-XX-XX', '090-1234-5678', 'yuko.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (11, '佐藤 秋美', 'サトウ アキミ', '606-8235', '京都府京都市左京区田中西春菜町X-XX-XX', '090-1234-5678', 'akimi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO members (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (12, '佐藤 信平', 'サトウ シンペイ', '673-1324', '兵庫県加東市新定X-XX-XX', '090-1234-5678', 'shinpei.samurai@example.com', 'password', 1, false);

-- reservationsテーブル --

INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (1, 1, 1,'2024-04-02','18:00',3);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (2, 2, 1,'2024-04-05','12:00',2);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (3, 3, 1,'2024-04-08','19:00',4);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (4, 4, 1,'2024-04-11','13:00',2);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (5, 5, 1,'2024-04-14','20:00',5);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (6, 6, 1,'2024-04-17','19:00',3);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (7, 7, 1,'2024-04-20','17:00',4);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (8, 8, 1,'2024-04-23','19:00',6);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (9, 9, 1,'2024-04-26','18:00',3);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (10, 10, 1,'2024-04-29','18:00',2);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (11, 11, 1,'2024-05-02','19:00',3);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (12, 12, 1,'2024-05-05','19:00',6);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (13, 13, 1,'2024-05-08','20:00',4);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (14, 14, 1,'2024-05-11','19:00',5);
INSERT IGNORE INTO reservations (id, shope_id, member_id, reservation_date, reservation_time, number_of_people) VALUES (15, 15, 1,'2024-05-14','17:00',2);

-- reviewsテーブル --
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (1, 1, 1, 5, 'とてもおいしかったです。また利用したいです。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (2, 1, 2, 5, '設備がしっかり整って、すごしやすかったです。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (3, 1, 3, 4, 'お店の雰囲気がよく、楽しい時間を過ごすことができました。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (4, 1, 4, 3, '香ばしく、おいしかったのですが、味が少し薄かったです。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (5, 1, 5, 4, 'おいしかったです。次回もまたご利用したいです。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (6, 1, 6, 3, '料理はおいしかったですが、メニューの種類をもう少し増やしていただきたかったです。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (7, 1, 7, 5, '接客態度もよく、大満足です。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (8, 1, 8, 2, '味はおいしかったですが、お料理の量を多くしてほしかったです');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (9, 1, 9, 4, '店内の聡明感が素晴らしく、店員さんが親切でした。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (10, 1, 10, 5, '料理もおいしくて、ゆったりとした時間を過ごすことができました。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (11, 1, 11, 5, '料理が繊細で、他のお店にはない最高の料理でした。');
INSERT IGNORE INTO reviews (id, shope_id, member_id, score, content) VALUES (12, 1, 12, 3, '味は悪くないですが、メニューを豊富にしてほしかったです。');

-- favoritesテーブル --
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (1, 1, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (2, 2, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (3, 3, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (4, 4, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (5, 5, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (6, 6, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (7, 7, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (8, 8, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (9, 9, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (10, 10, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (11, 11, 1);
INSERT IGNORE INTO favorites (id, shope_id, member_id) VALUES (12, 12, 1);

