import '../print/print_color.dart';

class HelperView {

  HelperView._privateConstructor();

  static final HelperView _instance = HelperView._privateConstructor();

  static HelperView get getInstance => _instance;

  void showAvailableCommands(){
    Logger.warning('''\n
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
  update: to Update Ardev CLI
  --version:
  ''');
  }

}