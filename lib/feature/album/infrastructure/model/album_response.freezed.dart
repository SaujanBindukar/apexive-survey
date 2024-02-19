// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) {
  return _AlbumResponse.fromJson(json);
}

/// @nodoc
mixin _$AlbumResponse {
  List<AlbumData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumResponseCopyWith<AlbumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumResponseCopyWith<$Res> {
  factory $AlbumResponseCopyWith(
          AlbumResponse value, $Res Function(AlbumResponse) then) =
      _$AlbumResponseCopyWithImpl<$Res, AlbumResponse>;
  @useResult
  $Res call({List<AlbumData> data});
}

/// @nodoc
class _$AlbumResponseCopyWithImpl<$Res, $Val extends AlbumResponse>
    implements $AlbumResponseCopyWith<$Res> {
  _$AlbumResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlbumData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumResponseImplCopyWith<$Res>
    implements $AlbumResponseCopyWith<$Res> {
  factory _$$AlbumResponseImplCopyWith(
          _$AlbumResponseImpl value, $Res Function(_$AlbumResponseImpl) then) =
      __$$AlbumResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlbumData> data});
}

/// @nodoc
class __$$AlbumResponseImplCopyWithImpl<$Res>
    extends _$AlbumResponseCopyWithImpl<$Res, _$AlbumResponseImpl>
    implements _$$AlbumResponseImplCopyWith<$Res> {
  __$$AlbumResponseImplCopyWithImpl(
      _$AlbumResponseImpl _value, $Res Function(_$AlbumResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AlbumResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlbumData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumResponseImpl implements _AlbumResponse {
  const _$AlbumResponseImpl({final List<AlbumData> data = const []})
      : _data = data;

  factory _$AlbumResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumResponseImplFromJson(json);

  final List<AlbumData> _data;
  @override
  @JsonKey()
  List<AlbumData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AlbumResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumResponseImplCopyWith<_$AlbumResponseImpl> get copyWith =>
      __$$AlbumResponseImplCopyWithImpl<_$AlbumResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumResponseImplToJson(
      this,
    );
  }
}

abstract class _AlbumResponse implements AlbumResponse {
  const factory _AlbumResponse({final List<AlbumData> data}) =
      _$AlbumResponseImpl;

  factory _AlbumResponse.fromJson(Map<String, dynamic> json) =
      _$AlbumResponseImpl.fromJson;

  @override
  List<AlbumData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlbumResponseImplCopyWith<_$AlbumResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumData _$AlbumDataFromJson(Map<String, dynamic> json) {
  return _AlbumData.fromJson(json);
}

/// @nodoc
mixin _$AlbumData {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDataCopyWith<AlbumData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDataCopyWith<$Res> {
  factory $AlbumDataCopyWith(AlbumData value, $Res Function(AlbumData) then) =
      _$AlbumDataCopyWithImpl<$Res, AlbumData>;
  @useResult
  $Res call({int id, int userId, String title});
}

/// @nodoc
class _$AlbumDataCopyWithImpl<$Res, $Val extends AlbumData>
    implements $AlbumDataCopyWith<$Res> {
  _$AlbumDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumDataImplCopyWith<$Res>
    implements $AlbumDataCopyWith<$Res> {
  factory _$$AlbumDataImplCopyWith(
          _$AlbumDataImpl value, $Res Function(_$AlbumDataImpl) then) =
      __$$AlbumDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String title});
}

/// @nodoc
class __$$AlbumDataImplCopyWithImpl<$Res>
    extends _$AlbumDataCopyWithImpl<$Res, _$AlbumDataImpl>
    implements _$$AlbumDataImplCopyWith<$Res> {
  __$$AlbumDataImplCopyWithImpl(
      _$AlbumDataImpl _value, $Res Function(_$AlbumDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
  }) {
    return _then(_$AlbumDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumDataImpl implements _AlbumData {
  const _$AlbumDataImpl(
      {required this.id, required this.userId, required this.title});

  factory _$AlbumDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumDataImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;

  @override
  String toString() {
    return 'AlbumData(id: $id, userId: $userId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumDataImplCopyWith<_$AlbumDataImpl> get copyWith =>
      __$$AlbumDataImplCopyWithImpl<_$AlbumDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumDataImplToJson(
      this,
    );
  }
}

abstract class _AlbumData implements AlbumData {
  const factory _AlbumData(
      {required final int id,
      required final int userId,
      required final String title}) = _$AlbumDataImpl;

  factory _AlbumData.fromJson(Map<String, dynamic> json) =
      _$AlbumDataImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$AlbumDataImplCopyWith<_$AlbumDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
