import 'dart:convert';
import 'dart:io';

import 'const/data_query.dart';
import 'const/path.dart';
import 'function/decision_default_languange.dart';
import 'function/file_helper.dart';
import 'function/folder_helper.dart';
import 'function/helper_view.dart';
import 'print/print_color.dart';
import 'validation/int.dart';
import 'validation/string.dart';

import 'extension/string_extension.dart';

void main(List<String> arguments) async {
  // var projectName;
  // var companyDomain;
  // var iosLanguange;
  // var androidLanguange;
  // var nullSafety;
  // var ardevPattern;

  // do {
  //   Logger.warning(Question.projectName + ' ');
  //   projectName = stdin.readLineSync();
  //   print('');
  // } while (StringValidation.isThereisData(projectName) ||
  //     StringValidation.isValidProjectName(projectName));

  // do {
  //   Logger.warning(Question.companyDomain +
  //       ' \u001b[1m' +
  //       Question.exampleCompanyDomain +
  //       ' ');
  //   companyDomain = stdin.readLineSync();
  //   print('');
  // } while (StringValidation.isCompanyDomain(companyDomain));

  // do {
  //   Logger.question('\u001b[1m1) Swift\n');
  //   Logger.question('\u001b[1m2) Objective-C\n');
  //   Logger.warning(Question.iosLanguange + ' ');
  //   iosLanguange = stdin.readLineSync();
  //   print('');
  // } while (IntValidation.isValidChoose(iosLanguange));

  // do {
  //   Logger.question('\u001b[1m1) Kotlin\n');
  //   Logger.question('\u001b[1m2) Java\n');
  //   Logger.warning(Question.androidLanguange + ' ');
  //   androidLanguange = stdin.readLineSync();
  //   print('');
  // } while (IntValidation.isValidChoose(androidLanguange));

  // do {
  //   Logger.question('\u001b[1m1) Yes!\n');
  //   Logger.question('\u001b[1m2) No\n');
  //   Logger.warning(Question.nullSafety + ' ');
  //   nullSafety = stdin.readLineSync();
  //   print('');
  // } while (IntValidation.isValidChoose(nullSafety));

  // final pathProject =
  //     Directory.current.path + '/' + projectName.toString().trim();

  // await Process.run('flutter', [
  //   'create',
  //   '--no-pub',
  //   '-i',
  //   '${DecisionDefaultLanguange.decisionIosLanguange(iosLanguange).trim()}',
  //   '-a',
  //   '${DecisionDefaultLanguange.decisionAndroidLanguange(androidLanguange).trim()}',
  //   '--org',
  //   '${companyDomain.toString().trim()}',
  //   '$pathProject'
  // ]).then((result) async {
  //   stdout.write(result.stdout);
  //   Logger.successfull('Success Create Project $pathProject\n\n');

  //   if (int.parse(nullSafety) == 1)
  //     await Process.run('flutter', ['pub', 'get'])
  //         .then(
  //       (result) async => await Process.run(
  //               'dart', ['migrate', '--apply-changes', '--skip-import-check'])
  //           .then(
  //         (nestedResult) =>
  //             Logger.successfull('Success migrate to null safety!\n\n'),
  //       )
  //           .catchError((error) {
  //         print('There is error : $error');
  //       }),
  //     )
  //         .catchError((error) {
  //       print('There is error : $error');
  //     });
  // }).catchError((error) {
  //   print('There is error : $error');
  // });

  // do {
  //   Logger.question('\u001b[1m1) Yes\n');
  //   Logger.question('\u001b[1m2) No\n');
  //   Logger.warning(Question.ardevPattern + ' ');
  //   ardevPattern = stdin.readLineSync();
  //   print('');
  // } while (IntValidation.isValidChoose(ardevPattern));

  // if (int.parse(ardevPattern) == 1) {
  //   await createTemplateDirectory(pathProject);
  //   await createFileTemplate(pathProject);
  //   Logger.warning("Waiting for create pattern!!\n\n");
  //   Future.delayed(Duration(seconds: 1)).then((value) async {
  //     await writeFileTemplate(pathProject);
  //     Logger.successfull("Success create Pattern!!!\n\n");
  //   });
  // }

  // print(result.stdout);
  // HelperView.getInstance.showAvailableCommands();

  generateModelsFile();
}

Future createTemplateDirectory(String pathBaseDirectory) async {
  try {
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
  } on Exception catch (_) {}
}

Future createFileTemplate(String pathBaseDirectory) async {
  try {
    for (var value in FileNameandPath.pathFileandName) {
      FileHelper.createFile(pathBaseDirectory + value);
    }
  } on Exception catch (_) {}
}

Future writeFileTemplate(String pathBaseDirectory) async {
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
    {
      'filePath': FileNameandPath.dartDocGuide,
      'query': DataQuery.dartDocGuide,
    },
  ];

  try {
    pathWriteFileTemplate.forEach((element) {
      FileHelper.writeFile(
          pathBaseDirectory + "${element['filePath']}", "${element['query']}");
    });
  } on Exception catch (_) {}
}

void generateModelsFile() {
  List<Map<String, dynamic>> pathObject = [];

  String valueFile = "";

  String completePath = Directory.current.path + '/bin/contoh_model_copy.json';

  final dataConvert = FileHelper.readFileSync(completePath);

  var fileName = (completePath.split('/').last).split('.').first;

  FileHelper.createFile(
      Directory.current.path + '/$fileName' + '_request.dart');

  print(Directory.current.path + '/$fileName' + '.dart');

  Map<String, dynamic> namaku = {"nama": "namaku", "data": true};

  valueFile += 'class ${fileName.toTitleCaseWithSymbol('_')}{\n';
  dataConvert.dataResultMapping.forEach((key, value) {
    if (value.runtimeType
        .toString()
        .contains('_InternalLinkedHashMap<String, dynamic>')) {
      valueFile += '   ${key.toTitleCase()} $key;\n';

      pathObject.add({
        'nameClass': '${key.toTitleCase()}',
        'valueClass': '${json.encode(dataConvert.dataResultMapping['$key'])}'
      });
    } else if (value.runtimeType.toString().contains('List<dynamic>')) {
      valueFile += '   List<${key.toTitleCase()}> $key;\n';
      pathObject.add({
        'nameClass': '${key.toTitleCase()}',
        'valueClass': '${json.encode(dataConvert.dataResultMapping['$key'][0])}'
      });
    } else {
      valueFile += '   ${value.runtimeType.toString()} $key;\n';
    }
  });
  valueFile += '${fileName.toTitleCaseWithSymbol('_')}({\n';
  dataConvert.dataResultMapping.forEach((key, value) {
    valueFile += '  required this.$key,\n';
  });
  valueFile += '});\n';
  valueFile += '}\n\n';

  pathObject.forEach((element) {
    valueFile += 'class ${element['nameClass']}{\n';

    var result = jsonDecode(element['valueClass']) as Map<String, dynamic>;

    result.forEach((key, value) {
      valueFile += '   ${value.runtimeType.toString()} $key;\n';
    });
    valueFile += '${element['nameClass']}({\n';
    result.forEach((key, value) {
      valueFile += '  required this.$key,\n';
    });
    valueFile += '});\n\n';

    valueFile += '}\n\n';
  });

  // print("${json.encode(dataConvert.dataResultMapping['dataField'])}");
  // String data = "{userId: 1,title: delectus aut autem }";
  print(valueFile);
  // print(json.encode(data));

  FileHelper.writeFile(
      Directory.current.path + '/$fileName' + '_request.dart', valueFile);
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
