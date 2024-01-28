// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_sheets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSheetsImpl _$$TimeSheetsImplFromJson(Map<String, dynamic> json) =>
    _$TimeSheetsImpl(
      id: json['id'] as String,
      projectName: json['projectName'] as String?,
      taskName: json['taskName'] as String?,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isFavourite: json['isFavourite'] as bool? ?? false,
      hasStarted: json['hasStarted'] as bool? ?? false,
      duration: json['duration'] == null
          ? const Duration(seconds: 0)
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$TimeSheetsImplToJson(_$TimeSheetsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectName': instance.projectName,
      'taskName': instance.taskName,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'isFavourite': instance.isFavourite,
      'hasStarted': instance.hasStarted,
      'duration': instance.duration.inMicroseconds,
    };
