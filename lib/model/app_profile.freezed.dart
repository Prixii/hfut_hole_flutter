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

AppProfileData _$AppProfileDataFromJson(Map<String, dynamic> json) {
  return _AppProfileData.fromJson(json);
}

/// @nodoc
mixin _$AppProfileData {
  String get studentId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppProfileDataCopyWith<AppProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppProfileDataCopyWith<$Res> {
  factory $AppProfileDataCopyWith(
          AppProfileData value, $Res Function(AppProfileData) then) =
      _$AppProfileDataCopyWithImpl<$Res, AppProfileData>;
  @useResult
  $Res call({String studentId, String password, String token});
}

/// @nodoc
class _$AppProfileDataCopyWithImpl<$Res, $Val extends AppProfileData>
    implements $AppProfileDataCopyWith<$Res> {
  _$AppProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? password = null,
    Object? token = null,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppProfileDataImplCopyWith<$Res>
    implements $AppProfileDataCopyWith<$Res> {
  factory _$$AppProfileDataImplCopyWith(_$AppProfileDataImpl value,
          $Res Function(_$AppProfileDataImpl) then) =
      __$$AppProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentId, String password, String token});
}

/// @nodoc
class __$$AppProfileDataImplCopyWithImpl<$Res>
    extends _$AppProfileDataCopyWithImpl<$Res, _$AppProfileDataImpl>
    implements _$$AppProfileDataImplCopyWith<$Res> {
  __$$AppProfileDataImplCopyWithImpl(
      _$AppProfileDataImpl _value, $Res Function(_$AppProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? password = null,
    Object? token = null,
  }) {
    return _then(_$AppProfileDataImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppProfileDataImpl implements _AppProfileData {
  const _$AppProfileDataImpl(
      {this.studentId = "", this.password = "", this.token = ""});

  factory _$AppProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppProfileDataImplFromJson(json);

  @override
  @JsonKey()
  final String studentId;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'AppProfileData(studentId: $studentId, password: $password, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppProfileDataImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, password, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppProfileDataImplCopyWith<_$AppProfileDataImpl> get copyWith =>
      __$$AppProfileDataImplCopyWithImpl<_$AppProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppProfileDataImplToJson(
      this,
    );
  }
}

abstract class _AppProfileData implements AppProfileData {
  const factory _AppProfileData(
      {final String studentId,
      final String password,
      final String token}) = _$AppProfileDataImpl;

  factory _AppProfileData.fromJson(Map<String, dynamic> json) =
      _$AppProfileDataImpl.fromJson;

  @override
  String get studentId;
  @override
  String get password;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AppProfileDataImplCopyWith<_$AppProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
