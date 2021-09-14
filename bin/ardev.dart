import 'dart:io';

import 'const/data_query.dart';
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
  var ardevPattern;

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

  do {
    printCustom.printQuestion('\u001b[1m1) Yes!\n');
    printCustom.printQuestion('\u001b[1m2) No\n');
    printCustom.printWarning(Question.ardevPattern + ' ');
    ardevPattern = stdin.readLineSync();
    print('');
  } while (IntValidation.isValidChoose(ardevPattern));

  if (int.parse(ardevPattern) == 1) {
    createTemplateDirectory(pathProject);
    createFileTemplate(pathProject);
    writeFileTemplate(pathProject);
  }

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
  ]).then((result) async {
    stdout.write(result.stdout);
    printCustom.printSucessfull('Success Create Project $pathProject\n\n');

    if (int.parse(nullSafety) == 1)
      await Process.run('flutter', ['pub', 'get'])
          .then(
        (result) async => await Process.run(
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
  }).catchError((error) {
    print('There is error : $error');
  });

  // print(result.stdout);
  // Helper.getInstance.showAvailableCommands();
}

void createTemplateDirectory(String pathBaseDirectory) {
  FolderHelper.createFolder(pathBaseDirectory + PathFolder.packagesFolder);

  // Data
  for (var value in PathFolder.pathDataFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }

  // Services
  for (var value in PathFolder.pathServiceFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }

  // Assets
  for (var value in PathFolder.assetsFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }

  // Main Lib
  for (var value in PathFolder.mainLibFolder) {
    FolderHelper.createFolder(pathBaseDirectory + value);
  }
}

void createFileTemplate(String pathBaseDirectory) {
  for (var value in FileNameandPath.pathFileandName) {
    FileHelper.createFile(pathBaseDirectory + value);
  }
}

void writeFileTemplate(String pathBaseDirectory) {
  final pathWriteFileTemplate = [
    {
      'filePath': FileNameandPath.fileConstDurationAnimate,
      'query': DataQueryData.constDurationAnimate,
    },
    {
      'filePath': FileNameandPath.fileConstFontWeight,
      'query': DataQueryData.constFontWeight,
    },
    {
      'filePath': FileNameandPath.fileConstSizedSpace,
      'query': DataQueryData.constSizedSpace,
    },
    {
      'filePath': FileNameandPath.fileConstMarginPadding,
      'query': DataQueryData.constMarginPadding,
    },
    {
      'filePath': FileNameandPath.fileConstBorderRadius,
      'query': DataQueryData.constBorderRadius,
    },
    {
      'filePath': FileNameandPath.fileConstGeneralWidget,
      'query': DataQueryData.constSizedGeneralWidget,
    },
    {
      'filePath': FileNameandPath.fileConstSizedFont,
      'query': DataQueryData.constFontSize,
    },
    {
      'filePath': FileNameandPath.fileConstQualityImage,
      'query': DataQueryData.constQualityImage,
    },
    {
      'filePath': FileNameandPath.fileConstSizedIcons,
      'query': DataQueryData.constSizedIcons,
    },
    {
      'filePath': FileNameandPath.fileConstSizedWidthHeight,
      'query': DataQueryData.constSizedWidthHeight,
    },
    {
      'filePath': FileNameandPath.fileDataSourceUrls,
      'query': DataQueryData.constUrls,
    },
    {
      'filePath': FileNameandPath.fileModelsOthersHandleFailure,
      'query': DataQueryData.modelsHandleFailure,
    },
    {
      'filePath': FileNameandPath.fileModelsOthersObjectBody,
      'query': DataQueryData.modelsObjectBody,
    },
    {
      'filePath': FileNameandPath.fileModelsOthersOnSuccess,
      'query': DataQueryData.modelsOnSuccess,
    },
    {
      'filePath': FileNameandPath.fileModelsOthersHandleStatus,
      'query': DataQueryData.modelsTuppleHandleStatus,
    },
    {
      'filePath': FileNameandPath.fileModelsOthersTupple,
      'query': DataQueryData.modelsTupple,
    },
    {
      'filePath': FileNameandPath.packagesDataPubspec,
      'query': DataQueryData.pubspecYaml,
    },
    {
      'filePath': FileNameandPath.packagesServicesLibInternalGetApi,
      'query': DataQueryServices.getDataApi,
    },
    {
      'filePath': FileNameandPath.packagesServicesLibInternalLoggerServ,
      'query': DataQueryServices.loggerServ,
    },
    {
      'filePath': FileNameandPath.packagesServicesPubspec,
      'query': DataQueryServices.pubspecYaml,
    },
    {
      'filePath': FileNameandPath.pubpspecYaml,
      'query': DataQuery.pubspecYaml,
    },
  ];

  pathWriteFileTemplate.forEach((element) {
    FileHelper.writeFile(
        pathBaseDirectory + "${element['filePath']}", "${element['query']}");
  });
}

/// ![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
// void createLinter(String path) async {
//   await Process.run('flutter', ['pub', 'add', '-d', 'lint']).then((value) {
//     print('Success add Linter dev_dependencies');

//     File(path + FileNameandPath.analysisOption)
//         .create(recursive: true)
//         .then((file) {
//       print(
//           'your file has been created successfully at ${FileNameandPath.analysisOption}');
//     }).catchError((error) {
//       print('There is error : $error');
//     });
//   }).catchError((error) {
//     print('There is error : $error');
//   });
// }
