// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hole.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HoleList _$HoleListFromJson(Map<String, dynamic> json) {
  return _HoleList.fromJson(json);
}

/// @nodoc
mixin _$HoleList {
  List<Hole> get holes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoleListCopyWith<HoleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoleListCopyWith<$Res> {
  factory $HoleListCopyWith(HoleList value, $Res Function(HoleList) then) =
      _$HoleListCopyWithImpl<$Res, HoleList>;
  @useResult
  $Res call({List<Hole> holes});
}

/// @nodoc
class _$HoleListCopyWithImpl<$Res, $Val extends HoleList>
    implements $HoleListCopyWith<$Res> {
  _$HoleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holes = null,
  }) {
    return _then(_value.copyWith(
      holes: null == holes
          ? _value.holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<Hole>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HoleListImplCopyWith<$Res>
    implements $HoleListCopyWith<$Res> {
  factory _$$HoleListImplCopyWith(
          _$HoleListImpl value, $Res Function(_$HoleListImpl) then) =
      __$$HoleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hole> holes});
}

/// @nodoc
class __$$HoleListImplCopyWithImpl<$Res>
    extends _$HoleListCopyWithImpl<$Res, _$HoleListImpl>
    implements _$$HoleListImplCopyWith<$Res> {
  __$$HoleListImplCopyWithImpl(
      _$HoleListImpl _value, $Res Function(_$HoleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holes = null,
  }) {
    return _then(_$HoleListImpl(
      holes: null == holes
          ? _value._holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<Hole>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HoleListImpl implements _HoleList {
  const _$HoleListImpl({final List<Hole> holes = const []}) : _holes = holes;

  factory _$HoleListImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoleListImplFromJson(json);

  final List<Hole> _holes;
  @override
  @JsonKey()
  List<Hole> get holes {
    if (_holes is EqualUnmodifiableListView) return _holes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holes);
  }

  @override
  String toString() {
    return 'HoleList(holes: $holes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoleListImpl &&
            const DeepCollectionEquality().equals(other._holes, _holes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_holes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoleListImplCopyWith<_$HoleListImpl> get copyWith =>
      __$$HoleListImplCopyWithImpl<_$HoleListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HoleListImplToJson(
      this,
    );
  }
}

abstract class _HoleList implements HoleList {
  const factory _HoleList({final List<Hole> holes}) = _$HoleListImpl;

  factory _HoleList.fromJson(Map<String, dynamic> json) =
      _$HoleListImpl.fromJson;

  @override
  List<Hole> get holes;
  @override
  @JsonKey(ignore: true)
  _$$HoleListImplCopyWith<_$HoleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hole _$HoleFromJson(Map<String, dynamic> json) {
  return _Hole.fromJson(json);
}

/// @nodoc
mixin _$Hole {
  int get id => throw _privateConstructorUsedError;
  String get createAt => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String> get imgs => throw _privateConstructorUsedError;
  String? get bilibili => throw _privateConstructorUsedError;
  UserData get user => throw _privateConstructorUsedError;
  int get favoriteCounts => throw _privateConstructorUsedError;
  List<UserData> get favoriteUsers => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Vote? get vote => throw _privateConstructorUsedError;
  int get commentCounts => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Classification get classification => throw _privateConstructorUsedError;
  SubClassification get subClassification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoleCopyWith<Hole> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoleCopyWith<$Res> {
  factory $HoleCopyWith(Hole value, $Res Function(Hole) then) =
      _$HoleCopyWithImpl<$Res, Hole>;
  @useResult
  $Res call(
      {int id,
      String createAt,
      String? body,
      String? title,
      List<String> imgs,
      String? bilibili,
      UserData user,
      int favoriteCounts,
      List<UserData> favoriteUsers,
      List<String> tags,
      Vote? vote,
      int commentCounts,
      List<Comment> comments,
      Category category,
      Classification classification,
      SubClassification subClassification});

  $UserDataCopyWith<$Res> get user;
  $VoteCopyWith<$Res>? get vote;
  $CategoryCopyWith<$Res> get category;
  $ClassificationCopyWith<$Res> get classification;
  $SubClassificationCopyWith<$Res> get subClassification;
}

/// @nodoc
class _$HoleCopyWithImpl<$Res, $Val extends Hole>
    implements $HoleCopyWith<$Res> {
  _$HoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? body = freezed,
    Object? title = freezed,
    Object? imgs = null,
    Object? bilibili = freezed,
    Object? user = null,
    Object? favoriteCounts = null,
    Object? favoriteUsers = null,
    Object? tags = null,
    Object? vote = freezed,
    Object? commentCounts = null,
    Object? comments = null,
    Object? category = null,
    Object? classification = null,
    Object? subClassification = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imgs: null == imgs
          ? _value.imgs
          : imgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bilibili: freezed == bilibili
          ? _value.bilibili
          : bilibili // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      favoriteCounts: null == favoriteCounts
          ? _value.favoriteCounts
          : favoriteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteUsers: null == favoriteUsers
          ? _value.favoriteUsers
          : favoriteUsers // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vote: freezed == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote?,
      commentCounts: null == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Classification,
      subClassification: null == subClassification
          ? _value.subClassification
          : subClassification // ignore: cast_nullable_to_non_nullable
              as SubClassification,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VoteCopyWith<$Res>? get vote {
    if (_value.vote == null) {
      return null;
    }

    return $VoteCopyWith<$Res>(_value.vote!, (value) {
      return _then(_value.copyWith(vote: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassificationCopyWith<$Res> get classification {
    return $ClassificationCopyWith<$Res>(_value.classification, (value) {
      return _then(_value.copyWith(classification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubClassificationCopyWith<$Res> get subClassification {
    return $SubClassificationCopyWith<$Res>(_value.subClassification, (value) {
      return _then(_value.copyWith(subClassification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HoleImplCopyWith<$Res> implements $HoleCopyWith<$Res> {
  factory _$$HoleImplCopyWith(
          _$HoleImpl value, $Res Function(_$HoleImpl) then) =
      __$$HoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String createAt,
      String? body,
      String? title,
      List<String> imgs,
      String? bilibili,
      UserData user,
      int favoriteCounts,
      List<UserData> favoriteUsers,
      List<String> tags,
      Vote? vote,
      int commentCounts,
      List<Comment> comments,
      Category category,
      Classification classification,
      SubClassification subClassification});

  @override
  $UserDataCopyWith<$Res> get user;
  @override
  $VoteCopyWith<$Res>? get vote;
  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $ClassificationCopyWith<$Res> get classification;
  @override
  $SubClassificationCopyWith<$Res> get subClassification;
}

/// @nodoc
class __$$HoleImplCopyWithImpl<$Res>
    extends _$HoleCopyWithImpl<$Res, _$HoleImpl>
    implements _$$HoleImplCopyWith<$Res> {
  __$$HoleImplCopyWithImpl(_$HoleImpl _value, $Res Function(_$HoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? body = freezed,
    Object? title = freezed,
    Object? imgs = null,
    Object? bilibili = freezed,
    Object? user = null,
    Object? favoriteCounts = null,
    Object? favoriteUsers = null,
    Object? tags = null,
    Object? vote = freezed,
    Object? commentCounts = null,
    Object? comments = null,
    Object? category = null,
    Object? classification = null,
    Object? subClassification = null,
  }) {
    return _then(_$HoleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imgs: null == imgs
          ? _value._imgs
          : imgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bilibili: freezed == bilibili
          ? _value.bilibili
          : bilibili // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      favoriteCounts: null == favoriteCounts
          ? _value.favoriteCounts
          : favoriteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteUsers: null == favoriteUsers
          ? _value._favoriteUsers
          : favoriteUsers // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vote: freezed == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote?,
      commentCounts: null == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Classification,
      subClassification: null == subClassification
          ? _value.subClassification
          : subClassification // ignore: cast_nullable_to_non_nullable
              as SubClassification,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HoleImpl implements _Hole {
  const _$HoleImpl(
      {required this.id,
      required this.createAt,
      this.body,
      this.title,
      final List<String> imgs = const [],
      this.bilibili,
      required this.user,
      this.favoriteCounts = 0,
      final List<UserData> favoriteUsers = const [],
      final List<String> tags = const [],
      this.vote,
      this.commentCounts = 0,
      final List<Comment> comments = const [],
      required this.category,
      required this.classification,
      required this.subClassification})
      : _imgs = imgs,
        _favoriteUsers = favoriteUsers,
        _tags = tags,
        _comments = comments;

  factory _$HoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoleImplFromJson(json);

  @override
  final int id;
  @override
  final String createAt;
  @override
  final String? body;
  @override
  final String? title;
  final List<String> _imgs;
  @override
  @JsonKey()
  List<String> get imgs {
    if (_imgs is EqualUnmodifiableListView) return _imgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imgs);
  }

  @override
  final String? bilibili;
  @override
  final UserData user;
  @override
  @JsonKey()
  final int favoriteCounts;
  final List<UserData> _favoriteUsers;
  @override
  @JsonKey()
  List<UserData> get favoriteUsers {
    if (_favoriteUsers is EqualUnmodifiableListView) return _favoriteUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteUsers);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Vote? vote;
  @override
  @JsonKey()
  final int commentCounts;
  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final Category category;
  @override
  final Classification classification;
  @override
  final SubClassification subClassification;

  @override
  String toString() {
    return 'Hole(id: $id, createAt: $createAt, body: $body, title: $title, imgs: $imgs, bilibili: $bilibili, user: $user, favoriteCounts: $favoriteCounts, favoriteUsers: $favoriteUsers, tags: $tags, vote: $vote, commentCounts: $commentCounts, comments: $comments, category: $category, classification: $classification, subClassification: $subClassification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._imgs, _imgs) &&
            (identical(other.bilibili, bilibili) ||
                other.bilibili == bilibili) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.favoriteCounts, favoriteCounts) ||
                other.favoriteCounts == favoriteCounts) &&
            const DeepCollectionEquality()
                .equals(other._favoriteUsers, _favoriteUsers) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.subClassification, subClassification) ||
                other.subClassification == subClassification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createAt,
      body,
      title,
      const DeepCollectionEquality().hash(_imgs),
      bilibili,
      user,
      favoriteCounts,
      const DeepCollectionEquality().hash(_favoriteUsers),
      const DeepCollectionEquality().hash(_tags),
      vote,
      commentCounts,
      const DeepCollectionEquality().hash(_comments),
      category,
      classification,
      subClassification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoleImplCopyWith<_$HoleImpl> get copyWith =>
      __$$HoleImplCopyWithImpl<_$HoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HoleImplToJson(
      this,
    );
  }
}

abstract class _Hole implements Hole {
  const factory _Hole(
      {required final int id,
      required final String createAt,
      final String? body,
      final String? title,
      final List<String> imgs,
      final String? bilibili,
      required final UserData user,
      final int favoriteCounts,
      final List<UserData> favoriteUsers,
      final List<String> tags,
      final Vote? vote,
      final int commentCounts,
      final List<Comment> comments,
      required final Category category,
      required final Classification classification,
      required final SubClassification subClassification}) = _$HoleImpl;

  factory _Hole.fromJson(Map<String, dynamic> json) = _$HoleImpl.fromJson;

  @override
  int get id;
  @override
  String get createAt;
  @override
  String? get body;
  @override
  String? get title;
  @override
  List<String> get imgs;
  @override
  String? get bilibili;
  @override
  UserData get user;
  @override
  int get favoriteCounts;
  @override
  List<UserData> get favoriteUsers;
  @override
  List<String> get tags;
  @override
  Vote? get vote;
  @override
  int get commentCounts;
  @override
  List<Comment> get comments;
  @override
  Category get category;
  @override
  Classification get classification;
  @override
  SubClassification get subClassification;
  @override
  @JsonKey(ignore: true)
  _$$HoleImplCopyWith<_$HoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get username => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({String username, int id, String avatar});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? id = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int id, String avatar});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? id = null,
    Object? avatar = null,
  }) {
    return _then(_$UserDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.username, this.id = 0, required this.avatar});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String username;
  @override
  @JsonKey()
  final int id;
  @override
  final String avatar;

  @override
  String toString() {
    return 'UserData(username: $username, id: $id, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, id, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String username,
      final int id,
      required final String avatar}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get username;
  @override
  int get id;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get id => throw _privateConstructorUsedError;
  String get createAt => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get favoriteCounts => throw _privateConstructorUsedError;
  List<String> get imgs => throw _privateConstructorUsedError;
  UserData get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String id,
      String createAt,
      String body,
      int favoriteCounts,
      List<String> imgs,
      UserData user});

  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? body = null,
    Object? favoriteCounts = null,
    Object? imgs = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteCounts: null == favoriteCounts
          ? _value.favoriteCounts
          : favoriteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      imgs: null == imgs
          ? _value.imgs
          : imgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createAt,
      String body,
      int favoriteCounts,
      List<String> imgs,
      UserData user});

  @override
  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? body = null,
    Object? favoriteCounts = null,
    Object? imgs = null,
    Object? user = null,
  }) {
    return _then(_$CommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteCounts: null == favoriteCounts
          ? _value.favoriteCounts
          : favoriteCounts // ignore: cast_nullable_to_non_nullable
              as int,
      imgs: null == imgs
          ? _value._imgs
          : imgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {required this.id,
      required this.createAt,
      required this.body,
      this.favoriteCounts = 0,
      final List<String> imgs = const [],
      required this.user})
      : _imgs = imgs;

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String id;
  @override
  final String createAt;
  @override
  final String body;
  @override
  @JsonKey()
  final int favoriteCounts;
  final List<String> _imgs;
  @override
  @JsonKey()
  List<String> get imgs {
    if (_imgs is EqualUnmodifiableListView) return _imgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imgs);
  }

  @override
  final UserData user;

  @override
  String toString() {
    return 'Comment(id: $id, createAt: $createAt, body: $body, favoriteCounts: $favoriteCounts, imgs: $imgs, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.favoriteCounts, favoriteCounts) ||
                other.favoriteCounts == favoriteCounts) &&
            const DeepCollectionEquality().equals(other._imgs, _imgs) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createAt, body,
      favoriteCounts, const DeepCollectionEquality().hash(_imgs), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final String id,
      required final String createAt,
      required final String body,
      final int favoriteCounts,
      final List<String> imgs,
      required final UserData user}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get id;
  @override
  String get createAt;
  @override
  String get body;
  @override
  int get favoriteCounts;
  @override
  List<String> get imgs;
  @override
  UserData get user;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String? category});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? category});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$CategoryImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({this.category});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String? category;

  @override
  String toString() {
    return 'Category(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({final String? category}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Classification _$ClassificationFromJson(Map<String, dynamic> json) {
  return _Classification.fromJson(json);
}

/// @nodoc
mixin _$Classification {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassificationCopyWith<Classification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassificationCopyWith<$Res> {
  factory $ClassificationCopyWith(
          Classification value, $Res Function(Classification) then) =
      _$ClassificationCopyWithImpl<$Res, Classification>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$ClassificationCopyWithImpl<$Res, $Val extends Classification>
    implements $ClassificationCopyWith<$Res> {
  _$ClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassificationImplCopyWith<$Res>
    implements $ClassificationCopyWith<$Res> {
  factory _$$ClassificationImplCopyWith(_$ClassificationImpl value,
          $Res Function(_$ClassificationImpl) then) =
      __$$ClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$ClassificationImplCopyWithImpl<$Res>
    extends _$ClassificationCopyWithImpl<$Res, _$ClassificationImpl>
    implements _$$ClassificationImplCopyWith<$Res> {
  __$$ClassificationImplCopyWithImpl(
      _$ClassificationImpl _value, $Res Function(_$ClassificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$ClassificationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassificationImpl implements _Classification {
  const _$ClassificationImpl({this.name});

  factory _$ClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassificationImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'Classification(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassificationImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassificationImplCopyWith<_$ClassificationImpl> get copyWith =>
      __$$ClassificationImplCopyWithImpl<_$ClassificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassificationImplToJson(
      this,
    );
  }
}

abstract class _Classification implements Classification {
  const factory _Classification({final String? name}) = _$ClassificationImpl;

  factory _Classification.fromJson(Map<String, dynamic> json) =
      _$ClassificationImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ClassificationImplCopyWith<_$ClassificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubClassification _$SubClassificationFromJson(Map<String, dynamic> json) {
  return _SubClassification.fromJson(json);
}

/// @nodoc
mixin _$SubClassification {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubClassificationCopyWith<SubClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubClassificationCopyWith<$Res> {
  factory $SubClassificationCopyWith(
          SubClassification value, $Res Function(SubClassification) then) =
      _$SubClassificationCopyWithImpl<$Res, SubClassification>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$SubClassificationCopyWithImpl<$Res, $Val extends SubClassification>
    implements $SubClassificationCopyWith<$Res> {
  _$SubClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubClassificationImplCopyWith<$Res>
    implements $SubClassificationCopyWith<$Res> {
  factory _$$SubClassificationImplCopyWith(_$SubClassificationImpl value,
          $Res Function(_$SubClassificationImpl) then) =
      __$$SubClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$SubClassificationImplCopyWithImpl<$Res>
    extends _$SubClassificationCopyWithImpl<$Res, _$SubClassificationImpl>
    implements _$$SubClassificationImplCopyWith<$Res> {
  __$$SubClassificationImplCopyWithImpl(_$SubClassificationImpl _value,
      $Res Function(_$SubClassificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$SubClassificationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubClassificationImpl implements _SubClassification {
  const _$SubClassificationImpl({this.name});

  factory _$SubClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubClassificationImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'SubClassification(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubClassificationImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubClassificationImplCopyWith<_$SubClassificationImpl> get copyWith =>
      __$$SubClassificationImplCopyWithImpl<_$SubClassificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubClassificationImplToJson(
      this,
    );
  }
}

abstract class _SubClassification implements SubClassification {
  const factory _SubClassification({final String? name}) =
      _$SubClassificationImpl;

  factory _SubClassification.fromJson(Map<String, dynamic> json) =
      _$SubClassificationImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SubClassificationImplCopyWith<_$SubClassificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
