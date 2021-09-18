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

  createPathDataModel();
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

List<List<Map<String, dynamic>>> dataModelGenerate = [];

List<String> dataCollectString = [];

int maxLimit = 50;

void createPathDataModel() {
  String completePath = Directory.current.path + '/bin/contoh_model_copy.json';
  final dataConvert = FileHelper.readFileSync(completePath);
  var fileName = (completePath.split('/').last).split('.').first;
  var pathFileandName = Directory.current.path + '/$fileName' + '_request.dart';
  FileHelper.createFile(pathFileandName);

  for (int i = 1; i < maxLimit; i++) {
    dataModelGenerate.add([]);
    dataCollectString.add("");
  }
  initializeParentModel(dataConvert, fileName, pathFileandName);
}

void initializeParentModel(
    FileHelper dataConvert, String fileName, String pathComplete) {
  int i = 0;
  dataCollectString[i] += "import 'dart:convert';\n\n";

  dataCollectString[i] += 'class ${fileName.toClassName()}{\n';

  dataConvert.dataResultMapping.forEach((key, value) {
    if (value.runtimeType
        .toString()
        .contains('_InternalLinkedHashMap<String, dynamic>')) {
      dataCollectString[i] += '   ${key.toClassName()} $key;\n';

      dataModelGenerate[i].add({
        'nameClass': '${key.toClassName()}',
        'valueClass': '${json.encode(dataConvert.dataResultMapping['$key'])}'
      });
    } else if (value.runtimeType.toString().contains('List<dynamic>')) {
      dataCollectString[i] += '   List<${key.toClassName()}> $key;\n';

      dataModelGenerate[i].add({
        'nameClass': '${key.toClassName()}',
        'valueClass': '${json.encode(dataConvert.dataResultMapping['$key'][0])}'
      });
    } else {
      dataCollectString[i] += '   ${value.runtimeType.toString()} $key;\n';
    }
  });
  i++;
  dataCollectString[i] += '${fileName.toClassName()}({\n';
  dataConvert.dataResultMapping.forEach((key, value) {
    dataCollectString[i] += '  required this.$key,\n';
  });
  dataCollectString[i] += '});\n';

  dataCollectString[i] += 'Map<String, dynamic> toMap(){\n';
    dataCollectString[i] += 'return{\n';
    dataConvert.dataResultMapping.forEach((key, value) {
      if (value.runtimeType
          .toString()
          .contains('_InternalLinkedHashMap<String, dynamic>')) {
        dataCollectString[i] += "'$key': $key.toMap(),\n";
      } else if (value.runtimeType.toString().contains('List<dynamic>')) {
        dataCollectString[i] += "'$key': $key.map((x)=> x.toMap()).toList(),\n";
      } else {
        dataCollectString[i] += "'$key': $key,\n";
      }
    });
    dataCollectString[i] += '};\n';
    dataCollectString[i] += '}\n\n';

    dataCollectString[i] +=
        'factory ${fileName.toClassName()}.fromMap(Map<String, dynamic> map) {\n';
    dataCollectString[i] +=
        'return ${fileName.toClassName()}(\n';

    dataConvert.dataResultMapping.forEach((key, value) {
      if (value.runtimeType
          .toString()
          .contains('_InternalLinkedHashMap<String, dynamic>')) {
        dataCollectString[i] += "$key: ${key.toClassName()}.fromMap(map['$key']),\n";
      } else if (value.runtimeType.toString().contains('List<dynamic>')) {
        dataCollectString[i] += "$key: List<${key.toClassName()}>.from(map['$key']?.map((x)=> ${key.toClassName()}.fromMap(x))),\n";
      } else {
        dataCollectString[i] += "$key: map['$key'],\n";
      }
    });

    dataCollectString[i] += ');\n';
    dataCollectString[i] += '}\n\n';

    dataCollectString[i] += 'String toJson() => json.encode(toMap());\n\n';
    dataCollectString[i] +=
        'factory ${fileName.toClassName()}.fromJson(String source) => ${fileName.toClassName()}.fromMap(json.decode(source));\n\n';


  dataCollectString[i] += '}\n\n';

  getDataChildModel(pathComplete);
}

void getDataChildModel(String pathComplete) {
  for (int i = 1; i < maxLimit; i++) {
    generateChildModel(i);
  }
  var valueCollect = "";
  for (var value in dataCollectString) {
    valueCollect += value;
  }

  FileHelper.writeFile(pathComplete, valueCollect);
  Logger.warning(valueCollect);
}

void generateChildModel(int i) {
  for (int a = 0; a < dataModelGenerate[i - 1].length; a++) {
    dataCollectString[i] +=
        'class ${dataModelGenerate[i - 1][a]['nameClass']}{\n';

    var result = jsonDecode(dataModelGenerate[i - 1][a]['valueClass'])
        as Map<String, dynamic>;

    result.forEach((key, value) {
      if (value.runtimeType
          .toString()
          .contains('_InternalLinkedHashMap<String, dynamic>')) {
        dataCollectString[i] += '   ${key.toClassName()} $key;\n';

        dataModelGenerate[i].add({
          'nameClass': '${key.toClassName()}',
          'valueClass': '${json.encode(result['$key'])}'
        });
      } else if (value.runtimeType.toString().contains('List<dynamic>')) {
        dataCollectString[i] += '   List<${key.toClassName()}> $key;\n';

        dataModelGenerate[i].add({
          'nameClass': '${key.toClassName()}',
          'valueClass': '${json.encode(result['$key'][0])}'
        });
      } else {
        dataCollectString[i] += '   ${value.runtimeType.toString()} $key;\n';
      }
    });
    dataCollectString[i] += '${dataModelGenerate[i - 1][a]['nameClass']}({\n';
    result.forEach((key, value) {
      dataCollectString[i] += '  required this.$key,\n';
    });
    dataCollectString[i] += '});\n\n';

    dataCollectString[i] += 'Map<String, dynamic> toMap(){\n';
    dataCollectString[i] += 'return{\n';
    result.forEach((key, value) {
      if (value.runtimeType
          .toString()
          .contains('_InternalLinkedHashMap<String, dynamic>')) {
        dataCollectString[i] += "'$key': $key.toMap(),\n";
      } else if (value.runtimeType.toString().contains('List<dynamic>')) {
        dataCollectString[i] += "'$key': $key.map((x)=> x.toMap()).toList(),\n";
      } else {
        dataCollectString[i] += "'$key': $key,\n";
      }
    });
    dataCollectString[i] += '};\n';
    dataCollectString[i] += '}\n\n';

    dataCollectString[i] +=
        'factory ${dataModelGenerate[i - 1][a]['nameClass']}.fromMap(Map<String, dynamic> map) {\n';
    dataCollectString[i] +=
        'return ${dataModelGenerate[i - 1][a]['nameClass']}(\n';

    result.forEach((key, value) {
      if (value.runtimeType
          .toString()
          .contains('_InternalLinkedHashMap<String, dynamic>')) {
        dataCollectString[i] += "$key: ${key.toClassName()}.fromMap(map['$key']),\n";
      } else if (value.runtimeType.toString().contains('List<dynamic>')) {
        dataCollectString[i] += "$key: List<${key.toClassName()}>.from(map['$key']?.map((x)=> ${key.toClassName()}.fromMap(x))),\n";
      } else {
        dataCollectString[i] += "$key: map['$key'],\n";
      }
    });

    dataCollectString[i] += ');\n';
    dataCollectString[i] += '}\n\n';

    dataCollectString[i] += 'String toJson() => json.encode(toMap());\n\n';
    dataCollectString[i] +=
        'factory ${dataModelGenerate[i - 1][a]['nameClass']}.fromJson(String source) => ${dataModelGenerate[i - 1][a]['nameClass']}.fromMap(json.decode(source));\n\n';

    dataCollectString[i] += '}\n\n';
  }
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
