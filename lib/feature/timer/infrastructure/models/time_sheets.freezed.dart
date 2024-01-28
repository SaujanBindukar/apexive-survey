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
  String get id => throw _privateConstructorUsedError;
  String? get projectName => throw _privateConstructorUsedError;
  String? get taskName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  bool get hasStarted => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  Timer? get timer => throw _privateConstructorUsedError;

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
      {String id,
      String? projectName,
      String? taskName,
      String? description,
      DateTime createdAt,
      bool isFavourite,
      bool hasStarted,
      Duration duration,
      @JsonKey(includeFromJson: false) Timer? timer});
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
    Object? id = null,
    Object? projectName = freezed,
    Object? taskName = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? isFavourite = null,
    Object? hasStarted = null,
    Object? duration = null,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStarted: null == hasStarted
          ? _value.hasStarted
          : hasStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
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
      {String id,
      String? projectName,
      String? taskName,
      String? description,
      DateTime createdAt,
      bool isFavourite,
      bool hasStarted,
      Duration duration,
      @JsonKey(includeFromJson: false) Timer? timer});
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
    Object? id = null,
    Object? projectName = freezed,
    Object? taskName = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? isFavourite = null,
    Object? hasStarted = null,
    Object? duration = null,
    Object? timer = freezed,
  }) {
    return _then(_$TimeSheetsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStarted: null == hasStarted
          ? _value.hasStarted
          : hasStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSheetsImpl implements _TimeSheets {
  const _$TimeSheetsImpl(
      {required this.id,
      this.projectName,
      this.taskName,
      required this.description,
      required this.createdAt,
      this.isFavourite = false,
      this.hasStarted = false,
      this.duration = const Duration(seconds: 0),
      @JsonKey(includeFromJson: false) this.timer});

  factory _$TimeSheetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSheetsImplFromJson(json);

  @override
  final String id;
  @override
  final String? projectName;
  @override
  final String? taskName;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isFavourite;
  @override
  @JsonKey()
  final bool hasStarted;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey(includeFromJson: false)
  final Timer? timer;

  @override
  String toString() {
    return 'TimeSheets(id: $id, projectName: $projectName, taskName: $taskName, description: $description, createdAt: $createdAt, isFavourite: $isFavourite, hasStarted: $hasStarted, duration: $duration, timer: $timer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSheetsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.hasStarted, hasStarted) ||
                other.hasStarted == hasStarted) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, projectName, taskName,
      description, createdAt, isFavourite, hasStarted, duration, timer);

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
      {required final String id,
      final String? projectName,
      final String? taskName,
      required final String? description,
      required final DateTime createdAt,
      final bool isFavourite,
      final bool hasStarted,
      final Duration duration,
      @JsonKey(includeFromJson: false) final Timer? timer}) = _$TimeSheetsImpl;

  factory _TimeSheets.fromJson(Map<String, dynamic> json) =
      _$TimeSheetsImpl.fromJson;

  @override
  String get id;
  @override
  String? get projectName;
  @override
  String? get taskName;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  bool get isFavourite;
  @override
  bool get hasStarted;
  @override
  Duration get duration;
  @override
  @JsonKey(includeFromJson: false)
  Timer? get timer;
  @override
  @JsonKey(ignore: true)
  _$$TimeSheetsImplCopyWith<_$TimeSheetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
