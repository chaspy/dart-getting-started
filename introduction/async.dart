void main() {
  const oneSecond = Duration(seconds: 1);

  Future<void> printWithDelay(String message) async {
    await Future.delayed(oneSecond);
    print(message);
  }

  printWithDelay('Hello, Dart!');
}
