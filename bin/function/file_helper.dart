import 'dart:convert';
import 'dart:io';

class FileHelper {
  FileHelper.createFile(String path) {
    File(path).create(recursive: true);
  }

  FileHelper.writeFile(String pathandFileName, String content) {
    File(pathandFileName).writeAsString(content);
  }

  FileHelper.writeFilewithStream() {
    // var sink = file
    //     .openWrite(); // for appending at the end of file, pass parameter (mode: FileMode.append) to openWrite()
    // sink.write(DataQuery.linterFormat);
    // sink.flush();
    // sink.close();
  }

  FileHelper.deleteFile() {}

  FileHelper.readFileLinesSync(String path) {
    File file = new File(path);

    // sync
    List<String> lines = file.readAsLinesSync();
    lines.forEach((l) => print(l));
  }

  FileHelper.readFileLinesAsync(String path) {
    File file = new File(path);

    // async
    file.readAsLines().then((lines) => lines.forEach((l) => print(l)));
  }

  Map<String, dynamic> dataResultMapping = new Map<String, dynamic>();

  get dataMapping => dataResultMapping;

  FileHelper.readFileSync(String path) {
    String contents = new File(path).readAsStringSync();
    dataResultMapping = jsonDecode(contents) as Map<String, dynamic>;
  }

  FileHelper.readFileAsync() {
    new File('./assets/user.json').readAsString().then((c) => print(c));
  }

  FileHelper.putFile() {}
}
