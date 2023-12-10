import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hfut_hole_flutter/model/post/vote.dart';

part 'hole.freezed.dart';
part 'hole.g.dart';

@freezed
class HoleList with _$HoleList {
  const factory HoleList({
    @Default([]) List<Hole> holes,
  }) = _HoleList;

  factory HoleList.fromJson(Map<String, dynamic> json) =>
      _$HoleListFromJson(json);
}

@freezed
class Hole with _$Hole {
  const factory Hole({
    required int id,
    required String createAt,
    String? body,
    String? title,
    @Default([]) List<String> imgs,
    String? bilibili,
    required UserData user,
    @Default(0) int favoriteCounts,
    @Default([]) List<UserData> favoriteUsers,
    @Default([]) List<String> tags,
    Vote? vote,
    @Default(0) int commentCounts,
    @Default([]) List<Comment> comments,
    required Category category,
    required Classification classification,
    required SubClassification subClassification,
  }) = _Hole;

  factory Hole.fromJson(Map<String, dynamic> json) => _$HoleFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String username,
    @Default(0) int id,
    required String avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String createAt,
    required String body,
    @Default(0) int favoriteCounts,
    @Default([]) List<String> imgs,
    required UserData user,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    String? category,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Classification with _$Classification {
  const factory Classification({
    String? name,
  }) = _Classification;

  factory Classification.fromJson(Map<String, dynamic> json) =>
      _$ClassificationFromJson(json);
}

@freezed
class SubClassification with _$SubClassification {
  const factory SubClassification({
    String? name,
  }) = _SubClassification;

  factory SubClassification.fromJson(Map<String, dynamic> json) =>
      _$SubClassificationFromJson(json);
}
