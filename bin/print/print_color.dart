import 'dart:io';

/// ANSI escape code explanation

/// Here is the string to turn Hello red:

/// \x1B[31mHello\x1B[0m
/// And here it is again with spaces added for clarity between the parts:

/// \x1B  [31m  Hello  \x1B  [0m
/// Meaning:

/// \x1B: ANSI escape sequence starting marker
/// [31m: Escape sequence for red
/// [0m: Escape sequence for reset (stop making the text red)
/// Here are the other colors:

/// Black:   \x1B[30m
/// Red:     \x1B[31m
/// Green:   \x1B[32m
/// Yellow:  \x1B[33m
/// Blue:    \x1B[34m
/// Magenta: \x1B[35m
/// Cyan:    \x1B[36m
/// White:   \x1B[37m
/// Reset:   \x1B[0m
/// 
///![](/assets/some/local/path.png)
///
///📕: error message
///📙: warning message
///📗: ok status message
///📘: action message
///📓: canceled status message
///📔: Or anything you like and want to recognize immediately by color
class Logger {

  Logger._privateConstructor();

  static final Logger _instance = Logger._privateConstructor();

  static Logger get getInstance => _instance;

  /// ![Print Warning]('https://winpoin.com/wp-content/uploads/2013/03/free-image-resizer4.png')
  /// 
  /// Color Yellow
  Logger.warning(String text) {
    stdout.write('\x1B[33m$text\x1B[0m');
  }

  /// Print Error
  /// 
  /// Color Red
  Logger.error(String text) {
    stdout.write('\u001b[1m\x1B[31m$text\x1B[0m');
  }

  /// Print Success
  /// 
  /// Color Green
  Logger.successfull(String text) {
    stdout.write('\x1B[32m$text\x1B[0m');
  }

  /// Print List
  /// 
  /// Color Blue
  Logger.list(String text) {
    stdout.write('\x1B[34m$text\x1B[0m');
  }

  /// Print Question
  /// 
  /// Color White
  Logger.question(String text) {
    stdout.write('\x1B[37m$text\x1B[0m');
  }

}
