
abstract class JsonConvertible {
  factory JsonConvertible.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  Map<String, dynamic> toJson();
}
