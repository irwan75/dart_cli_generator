extension StringCustom on String {
  String toTitleCaseWithSymbol(String kodeSplit) {
    return convertToTitleCaseWithSpace(this, kodeSplit);
  }

  String toTitleCase() {
    return convertToTitleCase(this);
  }

  String toClassName() {
    return convertToClassName(this);
  }
}

String convertToClassName(String text) {
  final List<String> words = text.split('_');
  String namaClass = "";
  for (var value in words) {
    final String firstLetter = value.trim().substring(0, 1).toUpperCase();
    final String remainingLetters = value.trim().substring(1);
    namaClass += firstLetter+remainingLetters;
  }
  return namaClass;
}

String convertToTitleCaseWithSpace(String text, String kodeSplit) {
  if (text.length <= 1) {
    return text.toUpperCase();
  }

  // Split string into multiple words
  final List<String> words = text.split('$kodeSplit');

  // Capitalize first letter of each words
  final capitalizedWords = words.map((word) {
    if (word.trim().isNotEmpty) {
      final String firstLetter = word.trim().substring(0, 1).toUpperCase();
      final String remainingLetters = word.trim().substring(1);

      return '$firstLetter$remainingLetters';
    }
    return '';
  });

  // Join/Merge all words back to one String
  return capitalizedWords.join('');
}

String convertToTitleCase(String text) {
  if (text.length <= 1) {
    return text.toUpperCase();
  }

  // Split string into multiple words
  // final List<String> words = text.split('$kodeSplit');

  // Capitalize first letter of each words
  // final capitalizedWords = words.map((word) {
  // if (word.trim().isNotEmpty) {
  final String firstLetter = text.trim().substring(0, 1).toUpperCase();
  final String remainingLetters = text.trim().substring(1);

  return '$firstLetter$remainingLetters';
  // }
  // return '';
  // });

  // Join/Merge all words back to one String
  // return capitalizedWords.join('');
}
