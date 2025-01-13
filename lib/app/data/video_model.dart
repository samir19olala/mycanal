import 'package:mycanal_app/app/data/category_model.dart';
import 'package:mycanal_app/app/data/json_interface.dart';

class Video implements JsonConvertible {
  final String title;
  final String desc;
  final double duration;
  final Category category;
  final String thumbnail;
  final double state;

  const Video({
    required this.title,
    required this.desc,
    required this.duration,
    required this.category,
    required this.thumbnail,
    required this.state,
  });
  @override
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
        title: json["title"],
        desc: json["desc"],
        duration: json["duration"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        state: json["state"]);
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "desc": desc,
      "duration": duration,
      "category": category,
      "thumbnail": thumbnail,
      "state": state,
    };
  }
}

final List<Video> videos = [
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
  Video(
      title: 'Barbie :Big City,Big Dreams',
      desc: 'Téléfilm Animation',
      duration: 1.50,
      category: Category.fromJson(categories[4]),
      thumbnail: 'assets/images/CANAL.jpeg',
      state: 0.6),
];
