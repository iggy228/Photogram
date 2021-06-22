/// return null if is it all right else String with message
String? validateUsername(String? val) {
  if (val == null || val.isEmpty) {
    return 'Must be filled';
  }
  if (val.length < 4) {
    return 'Your username must have 4+ chars.';
  }
  return null;
}

/// return null if is it all right else String with message
String? validatePassword(String? val) {
  if (val == null || val.isEmpty) {
    return 'Must be filled';
  }
  bool isCorrect = RegExp(r'^(?=.*\d)(?=.*[a-zA-Z]).{6,}$').hasMatch(val);

  if (isCorrect) {
    return null;
  }

  if (val.length < 6) {
    return 'Your password must be long 6+ chars';
  }
  return 'Your password must contain letter and number';
}

String? validateEmail(String? val) {
  if (val == null || val.isEmpty) {
    return 'Must be filled';
  }
  bool isCorrect = RegExp(r'(\w|\.)+@(\w|-)+\.(\w|\.){2,}').hasMatch(val);

  if (isCorrect) {
    return null;
  }
  return 'Incorrect email form';
}