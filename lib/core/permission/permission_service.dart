import 'dart:developer';

import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    // setState(() {
    //   print(status);
    //   _permissionStatus = status;
    //   print(_permissionStatus);
    // });
  }

  static Future<bool> requestCameraPermission() async {
    var status = await Permission.camera.status;
    log(status.name.toString());

    switch (status) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.permanentlyDenied:
        return false;
      case PermissionStatus.denied:
        return false;

      default:
        return false;
    }

    // if (await Permission.location.isRestricted) {}
  }
}
