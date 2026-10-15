mixin timeStampLogger {
  void logWithTime(String message) {
    final now = DateTime.now();
    print(
      '[${now.year}-${now.month.toString().padLeft(2)}-${now.day.toString().padLeft(2)} ${now.hour.toString().padLeft(2)}:${now.minute.toString().padLeft(2)}:${now.second.toString().padLeft(2)}] - ${message}',
    );
  }
}

class User with timeStampLogger {
  String name;

  User(this.name);

  void login() {
    logWithTime("${name} Login in...");
  }
}

class Order with timeStampLogger {
  int orderId;

  Order(this.orderId);

  void createOrder() {
    logWithTime("Order ${orderId} created");
  }
}

void main() {
  User user = User("Aung Aung");
  Order order = Order(123);

  user.logWithTime("User");
  order.logWithTime("Order");

  user.login();
  order.createOrder();
}
