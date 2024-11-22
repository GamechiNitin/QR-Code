import 'package:uuid/uuid.dart';

abstract class GenerateCode {
  static String getCode() {
    var uuid = const Uuid();
    String code = uuid.v4();
    return code;
  }
}
