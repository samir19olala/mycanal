import 'dart:convert';
import 'dart:io';

import 'package:mycanal_app/app/data/json_interface.dart';

Future<String> convertToJson(JsonConvertible data) async {
  return jsonEncode(data.toJson());
}

Future<String> convertJson(dynamic data) async {
  return jsonEncode(data);
}

Future<T> convertToObject<T>(
    String data, T Function(Map<String,dynamic> json) fromJson) async {
  return fromJson(jsonDecode(data));
}

Future<JsonConvertible> convertTo(String data) async {
  return JsonConvertible.fromJson(jsonDecode(data));
}

Future<void> saveData(String path, String data) async {
  File file = File(path);
  await file.writeAsString(data,mode:FileMode.write);
}

Future<String?> loadPath(String path) async {
  File file = File(path);
  if (file.existsSync()) {
    return file.readAsString();
  }
  return null;
}
