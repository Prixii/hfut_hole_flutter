// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hole.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HoleListImpl _$$HoleListImplFromJson(Map<String, dynamic> json) =>
    _$HoleListImpl(
      holes: (json['holes'] as List<dynamic>?)
              ?.map((e) => Hole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HoleListImplToJson(_$HoleListImpl instance) =>
    <String, dynamic>{
      'holes': instance.holes,
    };

_$HoleImpl _$$HoleImplFromJson(Map<String, dynamic> json) => _$HoleImpl(
      id: json['id'] as int,
      createAt: json['createAt'] as String,
      body: json['body'] as String?,
      title: json['title'] as String?,
      imgs:
          (json['imgs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      bilibili: json['bilibili'] as String?,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
      favoriteCounts: json['favoriteCounts'] as int? ?? 0,
      favoriteUsers: (json['favoriteUsers'] as List<dynamic>?)
              ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      vote: json['vote'] == null
          ? null
          : Vote.fromJson(json['vote'] as Map<String, dynamic>),
      commentCounts: json['commentCounts'] as int? ?? 0,
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      classification: Classification.fromJson(
          json['classification'] as Map<String, dynamic>),
      subClassification: SubClassification.fromJson(
          json['subClassification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HoleImplToJson(_$HoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'body': instance.body,
      'title': instance.title,
      'imgs': instance.imgs,
      'bilibili': instance.bilibili,
      'user': instance.user,
      'favoriteCounts': instance.favoriteCounts,
      'favoriteUsers': instance.favoriteUsers,
      'tags': instance.tags,
      'vote': instance.vote,
      'commentCounts': instance.commentCounts,
      'comments': instance.comments,
      'category': instance.category,
      'classification': instance.classification,
      'subClassification': instance.subClassification,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      username: json['username'] as String,
      id: json['id'] as int? ?? 0,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'id': instance.id,
      'avatar': instance.avatar,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as String,
      createAt: json['createAt'] as String,
      body: json['body'] as String,
      favoriteCounts: json['favoriteCounts'] as int? ?? 0,
      imgs:
          (json['imgs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'body': instance.body,
      'favoriteCounts': instance.favoriteCounts,
      'imgs': instance.imgs,
      'user': instance.user,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

_$ClassificationImpl _$$ClassificationImplFromJson(Map<String, dynamic> json) =>
    _$ClassificationImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ClassificationImplToJson(
        _$ClassificationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$SubClassificationImpl _$$SubClassificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SubClassificationImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SubClassificationImplToJson(
        _$SubClassificationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
