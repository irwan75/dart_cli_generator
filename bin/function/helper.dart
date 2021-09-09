import '../print/print_color.dart';

class Helper {

  Helper._privateConstructor();

  static final Helper _instance = Helper._privateConstructor();

  static Helper get getInstance => _instance;

  void showAvailableCommands(){
    var printCustom = PrintColor.getInstance;
    printCustom.printWarning('''\n
List available commands:\n
  create:
    controller: Generate Controller
    page: Generate Page
    project: Generate new Project with Ardev Pattern
    screen: Generate Screen
    view: Generate View
  generate:
    locales: Generate translation file from json files
    model: Generate class model from json files
  help: Show Help
  upddate: to Update Ardev CLI
  --version:
  ''');
  }

}