String? nameValidation(value) {
  if (value == null || value.isEmpty) {
    return "This field is required";
  } else {
    return null;
  }
}

String? passwordValidation(value) {
  if (value == null || value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}

String? phoneValidation(value) {
  if (value == null ||
      value.isEmpty ||
      !RegExp(r'^[0-9]{11}$').hasMatch(value)) {
    return 'Enter a valid phone number (11 digits)';
  }
  return null;
}

String? emailValidation(value) {
  if (value == null ||
      !RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Enter a valid email';
  }
  return null;
}
