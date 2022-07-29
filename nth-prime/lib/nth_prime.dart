class NthPrime {
  int prime(int n) {
    if (n == 0) {
      throw ArgumentError('There is no zeroth prime');
    }
    int number = 1;
    while (n != 0) {
      number++;
      if (isPrime(number)) {
        n--;
      }
    }
    return number;
  }

  bool isPrime(int number) {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
}
