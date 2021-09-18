import '../print/print_color.dart';

class HelperView {
  HelperView._privateConstructor();

  static final HelperView _instance = HelperView._privateConstructor();

  static HelperView get getInstance => _instance;

  void showAvailableCommands() {
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

  void showHelpLevel1() {
    Logger.warning('''
\nAvailable commands:\n
  generate:
    model: Generate Model Class from Json File
''');
  }

  void exampleInitializeCLI() {
    Logger.example(
        '    initialize directory : gm generate model assets/models/file_name.json on lib/app/models/\n');
  }

  void exampleCLI() {
    Logger.example(
        '    example : gm generate model assets/models/file_name.json on lib/app/models/request/item/\n\n');
  }
}
