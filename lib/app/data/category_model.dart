import 'package:mycanal_app/app/data/json_interface.dart';



class Category implements JsonConvertible{
  final String title;
  final String thumbnail;
  final String desc;

  const Category(
      {this.desc = "", required this.title, required this.thumbnail});

  @override
  factory Category.fromJson(Map<String,dynamic>json){
    return Category(title: json["title"], thumbnail: json["thumbnail"]);
  } 
  @override
  Map<String,dynamic>toJson(){
    return {
      "title":title,
      "thumbnail":thumbnail,
    };
  }   
}

final String categoryPath = "assets/db/categories.json";

final List<Map<String,dynamic>> categories = [
  Category(title: "CINEMA", thumbnail: "assets/images/CANAL.jpeg").toJson(),
  Category(title: "SERIES", thumbnail: "assets/images/CANAL.jpeg").toJson(),
  Category(title: "SPORT", thumbnail: "assets/images/CANAL.jpeg").toJson(),
  Category(title: "DOCUMENTAIRE", thumbnail: "assets/images/CANAL.jpeg").toJson(),
  Category(title: "DESSIN ANIME", thumbnail: "assets/images/CANAL.jpeg").toJson(),
  Category(title: "ROMANCE", thumbnail: "assets/images/CANAL.jpeg").toJson(),
];





