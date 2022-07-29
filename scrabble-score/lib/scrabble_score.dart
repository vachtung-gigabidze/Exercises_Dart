int score(String s) {
  if (s.isEmpty) {
    return 0;
  }

  if ('aeioulnrst'.contains(s[0].toLowerCase()))
    return 1 + score(s.substring(1));
  if ('dg'.contains(s[0].toLowerCase())) return 2 + score(s.substring(1));
  if ('bcmp'.contains(s[0].toLowerCase())) return 3 + score(s.substring(1));
  if ('fhvwy'.contains(s[0].toLowerCase())) return 4 + score(s.substring(1));
  if ('k'.contains(s[0].toLowerCase())) return 5 + score(s.substring(1));
  if ('jx'.contains(s[0].toLowerCase())) return 8 + score(s.substring(1));
  if ('qz'.contains(s[0].toLowerCase())) return 10 + score(s.substring(1));

  return 0;
}
