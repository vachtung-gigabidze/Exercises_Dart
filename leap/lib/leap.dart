class Leap {
  bool leapYear(int year) {
    if (year % 4 == 0 && (year % 400 == 0 || 0 != year % 100)) return true;
    return false;
  }
}
