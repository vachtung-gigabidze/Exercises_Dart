class PhoneNumber {
  String? clean(String phone) {
    if (RegExp(r'[a-zA-Z]+').hasMatch(phone)) {
      throw FormatException('letters not permitted');
    }

    if (RegExp(r'[@:!]+').hasMatch(phone)) {
      throw FormatException('punctuations not permitted');
    }

    phone = phone.replaceAll(RegExp(r'[\D]+'), '');
    if (phone.length < 10) {
      throw FormatException('incorrect number of digits');
    }
    if (phone.length > 11) {
      throw FormatException('more than 11 digits');
    }

    if (phone.length == 11) {
      if (phone[0] != '1') {
        throw FormatException('11 digits must start with 1');
      } else {
        phone = phone.substring(1);
      }
    }

    if (phone[0] == '0') {
      throw FormatException('area code cannot start with zero');
    }
    if (phone[0] == '1') {
      throw FormatException('area code cannot start with one');
    }
    if (phone[3] == '0') {
      throw FormatException('exchange code cannot start with zero');
    }
    if (phone[3] == '1') {
      throw FormatException('exchange code cannot start with one');
    }
    return phone;
  }
}
