// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_sheets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSheetsImpl _$$TimeSheetsImplFromJson(Map<String, dynamic> json) =>
    _$TimeSheetsImpl(
      projectName: json['projectName'] as String,
      taskName: json['taskName'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      duration: json['duration'] == null
          ? const Duration(seconds: 0)
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$TimeSheetsImplToJson(_$TimeSheetsImpl instance) =>
    <String, dynamic>{
      'projectName': instance.projectName,
      'taskName': instance.taskName,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'duration': instance.duration.inMicroseconds,
    };
