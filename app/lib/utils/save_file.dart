import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> saveFile(String filename, String content) async {
  var directory;
  try {
    if (await _requestPermission(Permission.storage)) {
      directory = await getExternalStorageDirectory();
      String newPath = "";

      List<String> paths = directory.path.split("/");
      for (int x = 1; x < paths.length; x++) {
        String folder = paths[x];
        if (folder != "Android") {
          newPath += "/" + folder;
        } else {
          break;
        }
      }

      newPath = newPath + "/dailynotes";
      directory = Directory(newPath);

      File saveFile = File(directory.path + '/$filename.md');

      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      saveFile.writeAsString(content);

      return true;
    } else {
      return false;
    }
  } catch (err) {
    print("err");
    print(err);
    return false;
  }
}

Future<bool> _requestPermission(Permission permission) async {
  if (await permission.isGranted) {
    return true;
  } else {
    var result = await permission.request();
    if (result == PermissionStatus.granted) {
      return true;
    }
  }
  return false;
}
