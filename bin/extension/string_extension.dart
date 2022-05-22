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

  String toValidVariableName() {
    return convertToVariableName(this);
  }
}

String convertToVariableName(String text) {
  final List<String> words = text.split('_');
  String namaClass = "";
  if (words.length >= 2) {
    for (int i = 0; i < words.length; i++) {
      final String firstLetter;
      final String remainingLetters;
      if (i == 0) {
        firstLetter = words[i].trim().substring(0, 1).toLowerCase();
      } else {
        firstLetter = words[i].trim().substring(0, 1).toUpperCase();
      }
      remainingLetters = words[i].trim().substring(1);
      namaClass += firstLetter + remainingLetters;
    }
  } else {
    final String firstLetter = words[0].trim().substring(0, 1).toLowerCase();
    final String remainingLetters = words[0].trim().substring(1);
    namaClass += firstLetter + remainingLetters;
  }
  return namaClass;
}

String convertToClassName(String text) {
  final List<String> words = text.split('_');
  String namaClass = "";
  for (var value in words) {
    final String firstLetter = value.trim().substring(0, 1).toUpperCase();
    final String remainingLetters = value.trim().substring(1);
    namaClass += firstLetter + remainingLetters;
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
