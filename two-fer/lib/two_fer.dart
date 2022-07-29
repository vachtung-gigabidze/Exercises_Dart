String twoFer([String name = '']) {
  return name.isEmpty
      ? 'One for you, one for me.'
      : 'One for $name, one for me.';
}
