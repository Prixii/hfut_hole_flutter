// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hello_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HelloState {
  HelloPage get page => throw _privateConstructorUsedError;
  Widget get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelloStateCopyWith<HelloState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloStateCopyWith<$Res> {
  factory $HelloStateCopyWith(
          HelloState value, $Res Function(HelloState) then) =
      _$HelloStateCopyWithImpl<$Res, HelloState>;
  @useResult
  $Res call({HelloPage page, Widget currentPage});
}

/// @nodoc
class _$HelloStateCopyWithImpl<$Res, $Val extends HelloState>
    implements $HelloStateCopyWith<$Res> {
  _$HelloStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as HelloPage,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloStateImplCopyWith<$Res>
    implements $HelloStateCopyWith<$Res> {
  factory _$$HelloStateImplCopyWith(
          _$HelloStateImpl value, $Res Function(_$HelloStateImpl) then) =
      __$$HelloStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HelloPage page, Widget currentPage});
}

/// @nodoc
class __$$HelloStateImplCopyWithImpl<$Res>
    extends _$HelloStateCopyWithImpl<$Res, _$HelloStateImpl>
    implements _$$HelloStateImplCopyWith<$Res> {
  __$$HelloStateImplCopyWithImpl(
      _$HelloStateImpl _value, $Res Function(_$HelloStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? currentPage = null,
  }) {
    return _then(_$HelloStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as HelloPage,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$HelloStateImpl implements _HelloState {
  const _$HelloStateImpl({required this.page, required this.currentPage});

  @override
  final HelloPage page;
  @override
  final Widget currentPage;

  @override
  String toString() {
    return 'HelloState(page: $page, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloStateImplCopyWith<_$HelloStateImpl> get copyWith =>
      __$$HelloStateImplCopyWithImpl<_$HelloStateImpl>(this, _$identity);
}

abstract class _HelloState implements HelloState {
  const factory _HelloState(
      {required final HelloPage page,
      required final Widget currentPage}) = _$HelloStateImpl;

  @override
  HelloPage get page;
  @override
  Widget get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$HelloStateImplCopyWith<_$HelloStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
