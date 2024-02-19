import 'package:freezed_annotation/freezed_annotation.dart';
part 'album_response.freezed.dart';
part 'album_response.g.dart';

@freezed
class AlbumResponse with _$AlbumResponse {
  const factory AlbumResponse({
    @Default([]) List<AlbumData> data,
  }) = _AlbumResponse;
  factory AlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$AlbumResponseFromJson(json);
}

@freezed
class AlbumData with _$AlbumData {
  const factory AlbumData(
      {required int id,
      required int userId,
      required String title}) = _AlbumData;
  factory AlbumData.fromJson(Map<String, dynamic> json) =>
      _$AlbumDataFromJson(json);
}
