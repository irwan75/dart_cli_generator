import 'dart:io';

import 'const/data_query.dart';
import 'const/path.dart';
import 'function/decision_default_languange.dart';
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

    createLinter(pathProject);
    createDirectory(pathProject + '/packages');
  }).catchError((error) {
    print('There is error : $error');
  });

  // print(result.stdout);
  // Helper.getInstance.showAvailableCommands();
}

void createDirectory(String pathDirectory) {
  Directory(pathDirectory).create(recursive: true).then((folder) {
    print('your folder "packages" has been created successfully');
    
      Directory(pathDirectory+'/data').create(recursive: true).then((folder) {
        print('your folder "data" has been created successfully');
      }).catchError((error) {
        print('There is error : $error');
      });

      Directory(pathDirectory+'/services').create(recursive: true).then((folder) {
        print('your folder "services" has been created successfully');
      }).catchError((error) {
        print('There is error : $error');
      });
    
  }).catchError((error) {
    print('There is error : $error');
  });
}

void writeFile() {
  // var sink = file
  //     .openWrite(); // for appending at the end of file, pass parameter (mode: FileMode.append) to openWrite()
  // sink.write(DataQuery.linterFormat);
  // sink.flush();
  // sink.close();
}

/// [![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
void createLinter(String path) async {
  await Process.run('flutter', ['pub', 'add', '-d', 'lint']).then((value) {
    print('Success add Linter dev_dependencies');

    File(path + FileName.analysisOption).create(recursive: true).then((file) {
      print(
          'your file has been created successfully at ${FileName.analysisOption}');
    }).catchError((error) {
      print('There is error : $error');
    });
  }).catchError((error) {
    print('There is error : $error');
  });
}

void createDirectoryPackages() {}
