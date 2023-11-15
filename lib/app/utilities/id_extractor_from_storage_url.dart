String? regExtractor(String url) {
  final regExp =
      RegExp(r'/buckets/\w+/files/\w+/view\?project=(\w+)&mode=admin');
  final match = regExp.firstMatch(url);

  if (match != null && match.groupCount >= 1) {
    final extractedValue = match.group(1);
    return extractedValue; // Output: 6543d88ca92397be2f57
  } else {
    return null;
  }
}
