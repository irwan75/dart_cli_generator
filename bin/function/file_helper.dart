import 'dart:io';

class FileHelper {
  FileHelper.createFile(String path) {
    File(path).create(recursive: true);
  }

  FileHelper.writeFile() {
    // final filename = 'file.txt';
    // var file = await File(filename).writeAsString('some content');
  }

  FileHelper.writeFilewithStream() {
    // var sink = file
    //     .openWrite(); // for appending at the end of file, pass parameter (mode: FileMode.append) to openWrite()
    // sink.write(DataQuery.linterFormat);
    // sink.flush();
    // sink.close();
  }

  FileHelper.deleteFile() {}

  FileHelper.readFile() {}

  FileHelper.putFile() {}
}
