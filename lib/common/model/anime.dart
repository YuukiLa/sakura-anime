import 'package:json_annotation/json_annotation.dart';
part 'anime.g.dart';
@JsonSerializable()
class Anime {
    late String id;
    late String img;
    late String title;
    late String desc;
    late String type;

    Anime(this.id, this.title,this.img,  this.desc, this.type);

    factory Anime.fromJson(Map<String, dynamic> json) =>
        _$AnimeFromJson(json);

    Map<String, dynamic> toJson() => _$AnimeToJson(this);
}