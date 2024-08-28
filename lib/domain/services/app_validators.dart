class AppValidators {
  AppValidators._();

  static String? notEmpty(String? value) {
    if (value?.isEmpty ?? true) {
      return "Must not be empty";
    }
    return null;
  }
}
