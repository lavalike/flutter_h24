import 'package:flutter/services.dart';
import 'package:flutter_24h/common/constants.dart';

class ToastUtil {
  static var platform = const MethodChannel(Constants.CHANNEL);

  static void show(String msg) async {
    await platform.invokeMethod("showToast", msg);
  }
}
