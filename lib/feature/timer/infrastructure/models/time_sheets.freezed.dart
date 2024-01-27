// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_sheets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSheets _$TimeSheetsFromJson(Map<String, dynamic> json) {
  return _TimeSheets.fromJson(json);
}

/// @nodoc
mixin _$TimeSheets {
  String get projectName => throw _privateConstructorUsedError;
  String get taskName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSheetsCopyWith<TimeSheets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSheetsCopyWith<$Res> {
  factory $TimeSheetsCopyWith(
          TimeSheets value, $Res Function(TimeSheets) then) =
      _$TimeSheetsCopyWithImpl<$Res, TimeSheets>;
  @useResult
  $Res call(
      {String projectName,
      String taskName,
      String description,
      String createdAt,
      Duration duration});
}

/// @nodoc
class _$TimeSheetsCopyWithImpl<$Res, $Val extends TimeSheets>
    implements $TimeSheetsCopyWith<$Res> {
  _$TimeSheetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? taskName = null,
    Object? description = null,
    Object? createdAt = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSheetsImplCopyWith<$Res>
    implements $TimeSheetsCopyWith<$Res> {
  factory _$$TimeSheetsImplCopyWith(
          _$TimeSheetsImpl value, $Res Function(_$TimeSheetsImpl) then) =
      __$$TimeSheetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectName,
      String taskName,
      String description,
      String createdAt,
      Duration duration});
}

/// @nodoc
class __$$TimeSheetsImplCopyWithImpl<$Res>
    extends _$TimeSheetsCopyWithImpl<$Res, _$TimeSheetsImpl>
    implements _$$TimeSheetsImplCopyWith<$Res> {
  __$$TimeSheetsImplCopyWithImpl(
      _$TimeSheetsImpl _value, $Res Function(_$TimeSheetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? taskName = null,
    Object? description = null,
    Object? createdAt = null,
    Object? duration = null,
  }) {
    return _then(_$TimeSheetsImpl(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSheetsImpl implements _TimeSheets {
  const _$TimeSheetsImpl(
      {required this.projectName,
      required this.taskName,
      required this.description,
      required this.createdAt,
      this.duration = const Duration(seconds: 0)});

  factory _$TimeSheetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSheetsImplFromJson(json);

  @override
  final String projectName;
  @override
  final String taskName;
  @override
  final String description;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'TimeSheets(projectName: $projectName, taskName: $taskName, description: $description, createdAt: $createdAt, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSheetsImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, projectName, taskName, description, createdAt, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSheetsImplCopyWith<_$TimeSheetsImpl> get copyWith =>
      __$$TimeSheetsImplCopyWithImpl<_$TimeSheetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSheetsImplToJson(
      this,
    );
  }
}

abstract class _TimeSheets implements TimeSheets {
  const factory _TimeSheets(
      {required final String projectName,
      required final String taskName,
      required final String description,
      required final String createdAt,
      final Duration duration}) = _$TimeSheetsImpl;

  factory _TimeSheets.fromJson(Map<String, dynamic> json) =
      _$TimeSheetsImpl.fromJson;

  @override
  String get projectName;
  @override
  String get taskName;
  @override
  String get description;
  @override
  String get createdAt;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$TimeSheetsImplCopyWith<_$TimeSheetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
