class StringValidation {
  static bool isThereisData(String text) {
    return (text.isEmpty || text == '');
  }

  static bool isCompanyDomain(String text){
    return (!text.contains('.'));
  }

  static bool isValidProjectName(String text){
    return (text.trim().contains(' '));
  }
}
