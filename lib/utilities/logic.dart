bool isNotEmptyString(String string) {
  String newString = string.replaceAll(' ', '');
  if (newString.isEmpty) {
    return false;
  } else {
    return true;
  }
}
