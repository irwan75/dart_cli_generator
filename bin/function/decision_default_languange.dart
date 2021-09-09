class DecisionDefaultLanguange {
  static String decisionIosLanguange(String text) {
    switch (int.parse(text)) {
      case 1:
        return 'swift';
      case 2:
        return 'objc';
    }
    return 'swift';
  }

  static String decisionAndroidLanguange(String text) {
    switch (int.parse(text)) {
      case 1:
        return 'kotlin';
      case 2:
        return 'java';
    }
    return 'kotlin';
  }
}
