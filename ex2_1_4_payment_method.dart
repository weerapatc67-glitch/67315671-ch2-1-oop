abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงิน $amount บาท ด้วยบัตรเครดิต");
  }
}

class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงิน $amount บาท ผ่าน PromptPay");
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงิน $amount บาท ปลายทาง (Cash on Delivery)");
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  for (var payment in payments) {
    payment.pay(500);
  }
}