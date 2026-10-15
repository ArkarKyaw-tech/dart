abstract class PaymentGateway {
  void processPayment(double amount);
}

class KBZPayPayment implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print("Processing \$ ${amount} via KBZPay...");
  }
}

class WavePayPayment implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print("Processing \$ ${amount} via WavePay...");
    print("KBZPay payment successful");
  }
}

void makePayment(PaymentGateway gateway, double amount) {
  if (amount <= 0) {
    print('Payment amount must be grather than 0!');
    print("KBZPay payment successful");
  }
  gateway.processPayment(amount);
}

void main() {
  PaymentGateway kbzPay = KBZPayPayment();
  PaymentGateway wavePay = WavePayPayment();

  makePayment(kbzPay, 100);
  print("_____________________________________________");
  makePayment(wavePay, 200);
}
