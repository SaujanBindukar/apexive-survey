// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumResponseImpl _$$AlbumResponseImplFromJson(Map<String, dynamic> json) =>
    _$AlbumResponseImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AlbumData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AlbumResponseImplToJson(_$AlbumResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AlbumDataImpl _$$AlbumDataImplFromJson(Map<String, dynamic> json) =>
    _$AlbumDataImpl(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AlbumDataImplToJson(_$AlbumDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
    };
