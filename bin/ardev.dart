import 'dart:io';

import 'const/path.dart';
import 'function/decision_default_languange.dart';
import 'function/file_helper.dart';
import 'function/folder_helper.dart';
import 'print/print_color.dart';
import 'validation/int.dart';
import 'validation/string.dart';

void main(List<String> arguments) async {
  final printCustom = PrintColor.getInstance;

  var projectName;
  var companyDomain;
  var iosLanguange;
  var androidLanguange;
  var nullSafety;

  do {
    printCustom.printWarning(Question.projectName + ' ');
    projectName = stdin.readLineSync();
    print('');
  } while (StringValidation.isThereisData(projectName) ||
      StringValidation.isValidProjectName(projectName));

  do {
    printCustom.printWarning(Question.companyDomain +
        ' \u001b[1m' +
        Question.exampleCompanyDomain +
        ' ');
    companyDomain = stdin.readLineSync();
    print('');
  } while (StringValidation.isCompanyDomain(companyDomain));

  do {
    printCustom.printQuestion('\u001b[1m1) Swift\n');
    printCustom.printQuestion('\u001b[1m2) Objective-C\n');
    printCustom.printWarning(Question.iosLanguange + ' ');
    iosLanguange = stdin.readLineSync();
    print('');
  } while (IntValidation.isValidChoose(iosLanguange));

  do {
    printCustom.printQuestion('\u001b[1m1) Kotlin\n');
    printCustom.printQuestion('\u001b[1m2) Java\n');
    printCustom.printWarning(Question.androidLanguange + ' ');
    androidLanguange = stdin.readLineSync();
    print('');
  } while (IntValidation.isValidChoose(androidLanguange));

  do {
    printCustom.printQuestion('\u001b[1m1) Yes!\n');
    printCustom.printQuestion('\u001b[1m2) No\n');
    printCustom.printWarning(Question.nullSafety + ' ');
    nullSafety = stdin.readLineSync();
    print('');
  } while (IntValidation.isValidChoose(nullSafety));

  final pathProject =
      Directory.current.path + '/' + projectName.toString().trim();

  await Process.run('flutter', [
    'create',
    '--no-pub',
    '-i',
    '${DecisionDefaultLanguange.decisionIosLanguange(iosLanguange).trim()}',
    '-a',
    '${DecisionDefaultLanguange.decisionAndroidLanguange(androidLanguange).trim()}',
    '--org',
    '${companyDomain.toString().trim()}',
    '$pathProject'
  ]).then((result) {
    stdout.write(result.stdout);
    printCustom.printSucessfull('Success Create Project $pathProject\n\n');

    if (int.parse(nullSafety) == 1)
      Process.run('flutter', ['pub', 'get'])
          .then(
        (result) => Process.run(
                'dart', ['migrate', '--apply-changes', '--skip-import-check'])
            .then(
          (nestedResult) => printCustom
              .printSucessfull('Success migrate to null safety!\n\n'),
        )
            .catchError((error) {
          print('There is error : $error');
        }),
      )
          .catchError((error) {
        print('There is error : $error');
      });

    // createLinter(pathProject);
    createPackagesDirectory(pathProject);
  }).catchError((error) {
    print('There is error : $error');
  });

  // print(result.stdout);
  // Helper.getInstance.showAvailableCommands();
}

void createPackagesDirectory(String pathBaseDirectory) {
  FolderHelper.createFolder(pathBaseDirectory + PathFolder.packagesFolder);

  //Data
  for (var value in PathFolder.pathDataFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }

  //Services
  for (var value in PathFolder.pathServiceFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }

  createFilePackages(pathBaseDirectory);

}

void createFilePackages(String pathBaseDirectory){
  for(var value in FileNameandPath.pathFileandName){
    FileHelper.createFile(pathBaseDirectory+value);
  }
  
}

/// [![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
void createLinter(String path) async {
  await Process.run('flutter', ['pub', 'add', '-d', 'lint']).then((value) {
    print('Success add Linter dev_dependencies');

    File(path + FileNameandPath.analysisOption).create(recursive: true).then((file) {
      print(
          'your file has been created successfully at ${FileNameandPath.analysisOption}');
    }).catchError((error) {
      print('There is error : $error');
    });
  }).catchError((error) {
    print('There is error : $error');
  });
}

void createDirectoryPackages() {}
