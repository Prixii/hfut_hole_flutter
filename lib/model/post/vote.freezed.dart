// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vote _$VoteFromJson(Map<String, dynamic> json) {
  return _Vote.fromJson(json);
}

/// @nodoc
mixin _$Vote {
  String get id => throw _privateConstructorUsedError;
  String get createAt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  List<VoteItem> get items => throw _privateConstructorUsedError;
  int get isVoted => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteCopyWith<Vote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res, Vote>;
  @useResult
  $Res call(
      {String id,
      String createAt,
      String type,
      String endTime,
      List<VoteItem> items,
      int isVoted,
      int totalCount,
      bool isExpired});
}

/// @nodoc
class _$VoteCopyWithImpl<$Res, $Val extends Vote>
    implements $VoteCopyWith<$Res> {
  _$VoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? type = null,
    Object? endTime = null,
    Object? items = null,
    Object? isVoted = null,
    Object? totalCount = null,
    Object? isExpired = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VoteItem>,
      isVoted: null == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoteImplCopyWith<$Res> implements $VoteCopyWith<$Res> {
  factory _$$VoteImplCopyWith(
          _$VoteImpl value, $Res Function(_$VoteImpl) then) =
      __$$VoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createAt,
      String type,
      String endTime,
      List<VoteItem> items,
      int isVoted,
      int totalCount,
      bool isExpired});
}

/// @nodoc
class __$$VoteImplCopyWithImpl<$Res>
    extends _$VoteCopyWithImpl<$Res, _$VoteImpl>
    implements _$$VoteImplCopyWith<$Res> {
  __$$VoteImplCopyWithImpl(_$VoteImpl _value, $Res Function(_$VoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? type = null,
    Object? endTime = null,
    Object? items = null,
    Object? isVoted = null,
    Object? totalCount = null,
    Object? isExpired = null,
  }) {
    return _then(_$VoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VoteItem>,
      isVoted: null == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoteImpl implements _Vote {
  const _$VoteImpl(
      {required this.id,
      required this.createAt,
      required this.type,
      required this.endTime,
      required final List<VoteItem> items,
      required this.isVoted,
      required this.totalCount,
      required this.isExpired})
      : _items = items;

  factory _$VoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteImplFromJson(json);

  @override
  final String id;
  @override
  final String createAt;
  @override
  final String type;
  @override
  final String endTime;
  final List<VoteItem> _items;
  @override
  List<VoteItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int isVoted;
  @override
  final int totalCount;
  @override
  final bool isExpired;

  @override
  String toString() {
    return 'Vote(id: $id, createAt: $createAt, type: $type, endTime: $endTime, items: $items, isVoted: $isVoted, totalCount: $totalCount, isExpired: $isExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isVoted, isVoted) || other.isVoted == isVoted) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createAt,
      type,
      endTime,
      const DeepCollectionEquality().hash(_items),
      isVoted,
      totalCount,
      isExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteImplCopyWith<_$VoteImpl> get copyWith =>
      __$$VoteImplCopyWithImpl<_$VoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteImplToJson(
      this,
    );
  }
}

abstract class _Vote implements Vote {
  const factory _Vote(
      {required final String id,
      required final String createAt,
      required final String type,
      required final String endTime,
      required final List<VoteItem> items,
      required final int isVoted,
      required final int totalCount,
      required final bool isExpired}) = _$VoteImpl;

  factory _Vote.fromJson(Map<String, dynamic> json) = _$VoteImpl.fromJson;

  @override
  String get id;
  @override
  String get createAt;
  @override
  String get type;
  @override
  String get endTime;
  @override
  List<VoteItem> get items;
  @override
  int get isVoted;
  @override
  int get totalCount;
  @override
  bool get isExpired;
  @override
  @JsonKey(ignore: true)
  _$$VoteImplCopyWith<_$VoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VoteItem _$VoteItemFromJson(Map<String, dynamic> json) {
  return _VoteItem.fromJson(json);
}

/// @nodoc
mixin _$VoteItem {
  String get id => throw _privateConstructorUsedError;
  String get createAt => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get isVoted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteItemCopyWith<VoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteItemCopyWith<$Res> {
  factory $VoteItemCopyWith(VoteItem value, $Res Function(VoteItem) then) =
      _$VoteItemCopyWithImpl<$Res, VoteItem>;
  @useResult
  $Res call(
      {String id, String createAt, String option, int count, int isVoted});
}

/// @nodoc
class _$VoteItemCopyWithImpl<$Res, $Val extends VoteItem>
    implements $VoteItemCopyWith<$Res> {
  _$VoteItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? option = null,
    Object? count = null,
    Object? isVoted = null,
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
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isVoted: null == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoteItemImplCopyWith<$Res>
    implements $VoteItemCopyWith<$Res> {
  factory _$$VoteItemImplCopyWith(
          _$VoteItemImpl value, $Res Function(_$VoteItemImpl) then) =
      __$$VoteItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String createAt, String option, int count, int isVoted});
}

/// @nodoc
class __$$VoteItemImplCopyWithImpl<$Res>
    extends _$VoteItemCopyWithImpl<$Res, _$VoteItemImpl>
    implements _$$VoteItemImplCopyWith<$Res> {
  __$$VoteItemImplCopyWithImpl(
      _$VoteItemImpl _value, $Res Function(_$VoteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? option = null,
    Object? count = null,
    Object? isVoted = null,
  }) {
    return _then(_$VoteItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isVoted: null == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoteItemImpl implements _VoteItem {
  const _$VoteItemImpl(
      {required this.id,
      required this.createAt,
      required this.option,
      required this.count,
      required this.isVoted});

  factory _$VoteItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteItemImplFromJson(json);

  @override
  final String id;
  @override
  final String createAt;
  @override
  final String option;
  @override
  final int count;
  @override
  final int isVoted;

  @override
  String toString() {
    return 'VoteItem(id: $id, createAt: $createAt, option: $option, count: $count, isVoted: $isVoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isVoted, isVoted) || other.isVoted == isVoted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createAt, option, count, isVoted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteItemImplCopyWith<_$VoteItemImpl> get copyWith =>
      __$$VoteItemImplCopyWithImpl<_$VoteItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteItemImplToJson(
      this,
    );
  }
}

abstract class _VoteItem implements VoteItem {
  const factory _VoteItem(
      {required final String id,
      required final String createAt,
      required final String option,
      required final int count,
      required final int isVoted}) = _$VoteItemImpl;

  factory _VoteItem.fromJson(Map<String, dynamic> json) =
      _$VoteItemImpl.fromJson;

  @override
  String get id;
  @override
  String get createAt;
  @override
  String get option;
  @override
  int get count;
  @override
  int get isVoted;
  @override
  @JsonKey(ignore: true)
  _$$VoteItemImplCopyWith<_$VoteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
