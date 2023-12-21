// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageStateData {
  HoleStateData get holeState => throw _privateConstructorUsedError;
  AppStateData get appState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageStateDataCopyWith<PageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateDataCopyWith<$Res> {
  factory $PageStateDataCopyWith(
          PageStateData value, $Res Function(PageStateData) then) =
      _$PageStateDataCopyWithImpl<$Res, PageStateData>;
  @useResult
  $Res call({HoleStateData holeState, AppStateData appState});

  $HoleStateDataCopyWith<$Res> get holeState;
  $AppStateDataCopyWith<$Res> get appState;
}

/// @nodoc
class _$PageStateDataCopyWithImpl<$Res, $Val extends PageStateData>
    implements $PageStateDataCopyWith<$Res> {
  _$PageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holeState = null,
    Object? appState = null,
  }) {
    return _then(_value.copyWith(
      holeState: null == holeState
          ? _value.holeState
          : holeState // ignore: cast_nullable_to_non_nullable
              as HoleStateData,
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HoleStateDataCopyWith<$Res> get holeState {
    return $HoleStateDataCopyWith<$Res>(_value.holeState, (value) {
      return _then(_value.copyWith(holeState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStateDataCopyWith<$Res> get appState {
    return $AppStateDataCopyWith<$Res>(_value.appState, (value) {
      return _then(_value.copyWith(appState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageStateDataImplCopyWith<$Res>
    implements $PageStateDataCopyWith<$Res> {
  factory _$$PageStateDataImplCopyWith(
          _$PageStateDataImpl value, $Res Function(_$PageStateDataImpl) then) =
      __$$PageStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HoleStateData holeState, AppStateData appState});

  @override
  $HoleStateDataCopyWith<$Res> get holeState;
  @override
  $AppStateDataCopyWith<$Res> get appState;
}

/// @nodoc
class __$$PageStateDataImplCopyWithImpl<$Res>
    extends _$PageStateDataCopyWithImpl<$Res, _$PageStateDataImpl>
    implements _$$PageStateDataImplCopyWith<$Res> {
  __$$PageStateDataImplCopyWithImpl(
      _$PageStateDataImpl _value, $Res Function(_$PageStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holeState = null,
    Object? appState = null,
  }) {
    return _then(_$PageStateDataImpl(
      holeState: null == holeState
          ? _value.holeState
          : holeState // ignore: cast_nullable_to_non_nullable
              as HoleStateData,
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppStateData,
    ));
  }
}

/// @nodoc

class _$PageStateDataImpl implements _PageStateData {
  const _$PageStateDataImpl({required this.holeState, required this.appState});

  @override
  final HoleStateData holeState;
  @override
  final AppStateData appState;

  @override
  String toString() {
    return 'PageStateData(holeState: $holeState, appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageStateDataImpl &&
            (identical(other.holeState, holeState) ||
                other.holeState == holeState) &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, holeState, appState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageStateDataImplCopyWith<_$PageStateDataImpl> get copyWith =>
      __$$PageStateDataImplCopyWithImpl<_$PageStateDataImpl>(this, _$identity);
}

abstract class _PageStateData implements PageStateData {
  const factory _PageStateData(
      {required final HoleStateData holeState,
      required final AppStateData appState}) = _$PageStateDataImpl;

  @override
  HoleStateData get holeState;
  @override
  AppStateData get appState;
  @override
  @JsonKey(ignore: true)
  _$$PageStateDataImplCopyWith<_$PageStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HoleStateData {
  Hole get hole => throw _privateConstructorUsedError;
  HoleClassification? get classification => throw _privateConstructorUsedError;
  HoleListMode get listMode => throw _privateConstructorUsedError;
  HoleDetailCommentMode get commentMode => throw _privateConstructorUsedError;
  HoleDetailCommentOrder get commentOrder => throw _privateConstructorUsedError;
  int get commentPage => throw _privateConstructorUsedError;
  int get commentTotal => throw _privateConstructorUsedError;
  int get commentPageSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HoleStateDataCopyWith<HoleStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoleStateDataCopyWith<$Res> {
  factory $HoleStateDataCopyWith(
          HoleStateData value, $Res Function(HoleStateData) then) =
      _$HoleStateDataCopyWithImpl<$Res, HoleStateData>;
  @useResult
  $Res call(
      {Hole hole,
      HoleClassification? classification,
      HoleListMode listMode,
      HoleDetailCommentMode commentMode,
      HoleDetailCommentOrder commentOrder,
      int commentPage,
      int commentTotal,
      int commentPageSize});

  $HoleCopyWith<$Res> get hole;
}

/// @nodoc
class _$HoleStateDataCopyWithImpl<$Res, $Val extends HoleStateData>
    implements $HoleStateDataCopyWith<$Res> {
  _$HoleStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hole = null,
    Object? classification = freezed,
    Object? listMode = null,
    Object? commentMode = null,
    Object? commentOrder = null,
    Object? commentPage = null,
    Object? commentTotal = null,
    Object? commentPageSize = null,
  }) {
    return _then(_value.copyWith(
      hole: null == hole
          ? _value.hole
          : hole // ignore: cast_nullable_to_non_nullable
              as Hole,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as HoleClassification?,
      listMode: null == listMode
          ? _value.listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as HoleListMode,
      commentMode: null == commentMode
          ? _value.commentMode
          : commentMode // ignore: cast_nullable_to_non_nullable
              as HoleDetailCommentMode,
      commentOrder: null == commentOrder
          ? _value.commentOrder
          : commentOrder // ignore: cast_nullable_to_non_nullable
              as HoleDetailCommentOrder,
      commentPage: null == commentPage
          ? _value.commentPage
          : commentPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentTotal: null == commentTotal
          ? _value.commentTotal
          : commentTotal // ignore: cast_nullable_to_non_nullable
              as int,
      commentPageSize: null == commentPageSize
          ? _value.commentPageSize
          : commentPageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HoleCopyWith<$Res> get hole {
    return $HoleCopyWith<$Res>(_value.hole, (value) {
      return _then(_value.copyWith(hole: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HoleStateDataImplCopyWith<$Res>
    implements $HoleStateDataCopyWith<$Res> {
  factory _$$HoleStateDataImplCopyWith(
          _$HoleStateDataImpl value, $Res Function(_$HoleStateDataImpl) then) =
      __$$HoleStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Hole hole,
      HoleClassification? classification,
      HoleListMode listMode,
      HoleDetailCommentMode commentMode,
      HoleDetailCommentOrder commentOrder,
      int commentPage,
      int commentTotal,
      int commentPageSize});

  @override
  $HoleCopyWith<$Res> get hole;
}

/// @nodoc
class __$$HoleStateDataImplCopyWithImpl<$Res>
    extends _$HoleStateDataCopyWithImpl<$Res, _$HoleStateDataImpl>
    implements _$$HoleStateDataImplCopyWith<$Res> {
  __$$HoleStateDataImplCopyWithImpl(
      _$HoleStateDataImpl _value, $Res Function(_$HoleStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hole = null,
    Object? classification = freezed,
    Object? listMode = null,
    Object? commentMode = null,
    Object? commentOrder = null,
    Object? commentPage = null,
    Object? commentTotal = null,
    Object? commentPageSize = null,
  }) {
    return _then(_$HoleStateDataImpl(
      hole: null == hole
          ? _value.hole
          : hole // ignore: cast_nullable_to_non_nullable
              as Hole,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as HoleClassification?,
      listMode: null == listMode
          ? _value.listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as HoleListMode,
      commentMode: null == commentMode
          ? _value.commentMode
          : commentMode // ignore: cast_nullable_to_non_nullable
              as HoleDetailCommentMode,
      commentOrder: null == commentOrder
          ? _value.commentOrder
          : commentOrder // ignore: cast_nullable_to_non_nullable
              as HoleDetailCommentOrder,
      commentPage: null == commentPage
          ? _value.commentPage
          : commentPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentTotal: null == commentTotal
          ? _value.commentTotal
          : commentTotal // ignore: cast_nullable_to_non_nullable
              as int,
      commentPageSize: null == commentPageSize
          ? _value.commentPageSize
          : commentPageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HoleStateDataImpl implements _HoleStateData {
  const _$HoleStateDataImpl(
      {required this.hole,
      this.classification = null,
      this.listMode = HoleListMode.hot,
      this.commentMode = HoleDetailCommentMode.all,
      this.commentOrder = HoleDetailCommentOrder.favorite,
      this.commentPage = 0,
      this.commentTotal = 0,
      this.commentPageSize = 0});

  @override
  final Hole hole;
  @override
  @JsonKey()
  final HoleClassification? classification;
  @override
  @JsonKey()
  final HoleListMode listMode;
  @override
  @JsonKey()
  final HoleDetailCommentMode commentMode;
  @override
  @JsonKey()
  final HoleDetailCommentOrder commentOrder;
  @override
  @JsonKey()
  final int commentPage;
  @override
  @JsonKey()
  final int commentTotal;
  @override
  @JsonKey()
  final int commentPageSize;

  @override
  String toString() {
    return 'HoleStateData(hole: $hole, classification: $classification, listMode: $listMode, commentMode: $commentMode, commentOrder: $commentOrder, commentPage: $commentPage, commentTotal: $commentTotal, commentPageSize: $commentPageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoleStateDataImpl &&
            (identical(other.hole, hole) || other.hole == hole) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.listMode, listMode) ||
                other.listMode == listMode) &&
            (identical(other.commentMode, commentMode) ||
                other.commentMode == commentMode) &&
            (identical(other.commentOrder, commentOrder) ||
                other.commentOrder == commentOrder) &&
            (identical(other.commentPage, commentPage) ||
                other.commentPage == commentPage) &&
            (identical(other.commentTotal, commentTotal) ||
                other.commentTotal == commentTotal) &&
            (identical(other.commentPageSize, commentPageSize) ||
                other.commentPageSize == commentPageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hole, classification, listMode,
      commentMode, commentOrder, commentPage, commentTotal, commentPageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoleStateDataImplCopyWith<_$HoleStateDataImpl> get copyWith =>
      __$$HoleStateDataImplCopyWithImpl<_$HoleStateDataImpl>(this, _$identity);
}

abstract class _HoleStateData implements HoleStateData {
  const factory _HoleStateData(
      {required final Hole hole,
      final HoleClassification? classification,
      final HoleListMode listMode,
      final HoleDetailCommentMode commentMode,
      final HoleDetailCommentOrder commentOrder,
      final int commentPage,
      final int commentTotal,
      final int commentPageSize}) = _$HoleStateDataImpl;

  @override
  Hole get hole;
  @override
  HoleClassification? get classification;
  @override
  HoleListMode get listMode;
  @override
  HoleDetailCommentMode get commentMode;
  @override
  HoleDetailCommentOrder get commentOrder;
  @override
  int get commentPage;
  @override
  int get commentTotal;
  @override
  int get commentPageSize;
  @override
  @JsonKey(ignore: true)
  _$$HoleStateDataImplCopyWith<_$HoleStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppStateData {
  Pages get page => throw _privateConstructorUsedError;
  bool get showHole => throw _privateConstructorUsedError;
  List<Hole> get holeList => throw _privateConstructorUsedError;
  int get holeListPage => throw _privateConstructorUsedError;
  int get holeListLimit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateDataCopyWith<AppStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateDataCopyWith<$Res> {
  factory $AppStateDataCopyWith(
          AppStateData value, $Res Function(AppStateData) then) =
      _$AppStateDataCopyWithImpl<$Res, AppStateData>;
  @useResult
  $Res call(
      {Pages page,
      bool showHole,
      List<Hole> holeList,
      int holeListPage,
      int holeListLimit});
}

/// @nodoc
class _$AppStateDataCopyWithImpl<$Res, $Val extends AppStateData>
    implements $AppStateDataCopyWith<$Res> {
  _$AppStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? showHole = null,
    Object? holeList = null,
    Object? holeListPage = null,
    Object? holeListLimit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pages,
      showHole: null == showHole
          ? _value.showHole
          : showHole // ignore: cast_nullable_to_non_nullable
              as bool,
      holeList: null == holeList
          ? _value.holeList
          : holeList // ignore: cast_nullable_to_non_nullable
              as List<Hole>,
      holeListPage: null == holeListPage
          ? _value.holeListPage
          : holeListPage // ignore: cast_nullable_to_non_nullable
              as int,
      holeListLimit: null == holeListLimit
          ? _value.holeListLimit
          : holeListLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateDataImplCopyWith<$Res>
    implements $AppStateDataCopyWith<$Res> {
  factory _$$AppStateDataImplCopyWith(
          _$AppStateDataImpl value, $Res Function(_$AppStateDataImpl) then) =
      __$$AppStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Pages page,
      bool showHole,
      List<Hole> holeList,
      int holeListPage,
      int holeListLimit});
}

/// @nodoc
class __$$AppStateDataImplCopyWithImpl<$Res>
    extends _$AppStateDataCopyWithImpl<$Res, _$AppStateDataImpl>
    implements _$$AppStateDataImplCopyWith<$Res> {
  __$$AppStateDataImplCopyWithImpl(
      _$AppStateDataImpl _value, $Res Function(_$AppStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? showHole = null,
    Object? holeList = null,
    Object? holeListPage = null,
    Object? holeListLimit = null,
  }) {
    return _then(_$AppStateDataImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pages,
      showHole: null == showHole
          ? _value.showHole
          : showHole // ignore: cast_nullable_to_non_nullable
              as bool,
      holeList: null == holeList
          ? _value._holeList
          : holeList // ignore: cast_nullable_to_non_nullable
              as List<Hole>,
      holeListPage: null == holeListPage
          ? _value.holeListPage
          : holeListPage // ignore: cast_nullable_to_non_nullable
              as int,
      holeListLimit: null == holeListLimit
          ? _value.holeListLimit
          : holeListLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppStateDataImpl implements _AppStateData {
  const _$AppStateDataImpl(
      {required this.page,
      required this.showHole,
      required final List<Hole> holeList,
      required this.holeListPage,
      required this.holeListLimit})
      : _holeList = holeList;

  @override
  final Pages page;
  @override
  final bool showHole;
  final List<Hole> _holeList;
  @override
  List<Hole> get holeList {
    if (_holeList is EqualUnmodifiableListView) return _holeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holeList);
  }

  @override
  final int holeListPage;
  @override
  final int holeListLimit;

  @override
  String toString() {
    return 'AppStateData(page: $page, showHole: $showHole, holeList: $holeList, holeListPage: $holeListPage, holeListLimit: $holeListLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateDataImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.showHole, showHole) ||
                other.showHole == showHole) &&
            const DeepCollectionEquality().equals(other._holeList, _holeList) &&
            (identical(other.holeListPage, holeListPage) ||
                other.holeListPage == holeListPage) &&
            (identical(other.holeListLimit, holeListLimit) ||
                other.holeListLimit == holeListLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      showHole,
      const DeepCollectionEquality().hash(_holeList),
      holeListPage,
      holeListLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateDataImplCopyWith<_$AppStateDataImpl> get copyWith =>
      __$$AppStateDataImplCopyWithImpl<_$AppStateDataImpl>(this, _$identity);
}

abstract class _AppStateData implements AppStateData {
  const factory _AppStateData(
      {required final Pages page,
      required final bool showHole,
      required final List<Hole> holeList,
      required final int holeListPage,
      required final int holeListLimit}) = _$AppStateDataImpl;

  @override
  Pages get page;
  @override
  bool get showHole;
  @override
  List<Hole> get holeList;
  @override
  int get holeListPage;
  @override
  int get holeListLimit;
  @override
  @JsonKey(ignore: true)
  _$$AppStateDataImplCopyWith<_$AppStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
