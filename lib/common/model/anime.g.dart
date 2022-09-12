// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      json['id'] as String,
      json['title'] as String,
      json['img'] as String,
      json['desc'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'title': instance.title,
      'desc': instance.desc,
      'type': instance.type,
    };
