// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppProfile _$AppProfileFromJson(Map<String, dynamic> json) {
  return _AppProfile.fromJson(json);
}

/// @nodoc
mixin _$AppProfile {
  String get studentId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppProfileCopyWith<AppProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppProfileCopyWith<$Res> {
  factory $AppProfileCopyWith(
          AppProfile value, $Res Function(AppProfile) then) =
      _$AppProfileCopyWithImpl<$Res, AppProfile>;
  @useResult
  $Res call({String studentId, String password});
}

/// @nodoc
class _$AppProfileCopyWithImpl<$Res, $Val extends AppProfile>
    implements $AppProfileCopyWith<$Res> {
  _$AppProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppProfileImplCopyWith<$Res>
    implements $AppProfileCopyWith<$Res> {
  factory _$$AppProfileImplCopyWith(
          _$AppProfileImpl value, $Res Function(_$AppProfileImpl) then) =
      __$$AppProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentId, String password});
}

/// @nodoc
class __$$AppProfileImplCopyWithImpl<$Res>
    extends _$AppProfileCopyWithImpl<$Res, _$AppProfileImpl>
    implements _$$AppProfileImplCopyWith<$Res> {
  __$$AppProfileImplCopyWithImpl(
      _$AppProfileImpl _value, $Res Function(_$AppProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? password = null,
  }) {
    return _then(_$AppProfileImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppProfileImpl implements _AppProfile {
  const _$AppProfileImpl({this.studentId = "", this.password = ""});

  factory _$AppProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppProfileImplFromJson(json);

  @override
  @JsonKey()
  final String studentId;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'AppProfile(studentId: $studentId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppProfileImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppProfileImplCopyWith<_$AppProfileImpl> get copyWith =>
      __$$AppProfileImplCopyWithImpl<_$AppProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppProfileImplToJson(
      this,
    );
  }
}

abstract class _AppProfile implements AppProfile {
  const factory _AppProfile({final String studentId, final String password}) =
      _$AppProfileImpl;

  factory _AppProfile.fromJson(Map<String, dynamic> json) =
      _$AppProfileImpl.fromJson;

  @override
  String get studentId;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AppProfileImplCopyWith<_$AppProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
