import 'package:flutter_easyloading/flutter_easyloading.dart' show EasyLoading;

Future<T> withLoading<T>(Future<T> Function() targetFunction) async {
  EasyLoading.show();
  try {
    final result = await targetFunction();
    return result;
  } catch (e) {
    rethrow;
  } finally {
    EasyLoading.dismiss();
  }
}