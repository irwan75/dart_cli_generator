import '../print/print_color.dart';

class IntValidation {
  static bool isNumberEmpty(String text) {
    return (text.isEmpty || text == '');
  }

  static bool isChooseMore2(String text) {
    return (isNumberEmpty(text))
        ? true
        : (int.parse(text) > 2 || int.parse(text) == 0)
            ? true
            : false;
  }

  static bool isNumber(String text) {
    try {
      int.parse(text);
      return false;
    } on Exception catch (_) {
      Logger.error('Please Format Number (1/2) \n\n');
      return true;
    }
  }

  static bool isValidChoose(String text) {
    return (!isNumber(text)) ? isChooseMore2(text) : true;
  }
}
