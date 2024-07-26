const stripe = Stripe('pk_test_51OQS89Dj1UaUVpmtpuVSgFkHByw8NVmdmwMgY69c1AnMBiC0jREQmqYwCgbah9fePDpdvPOux60oNR4P40PXaxJq00uZo1QEqI');
const paymentButton = document.querySelector('#paymentButton');

paymentButton.addEventListener('click', () => {
	console.log('Button clicked!');
  stripe.redirectToCheckout({
  sessionId: sessionId
  })
});