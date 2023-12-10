// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppProfileDataImpl _$$AppProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$AppProfileDataImpl(
      studentId: json['studentId'] as String? ?? "",
      password: json['password'] as String? ?? "",
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$AppProfileDataImplToJson(
        _$AppProfileDataImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'password': instance.password,
      'token': instance.token,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appProfileHash() => r'c98a17abe3990a0d682fe2906ad42c5ba207e1c9';

/// See also [AppProfile].
@ProviderFor(AppProfile)
final appProfileProvider =
    AutoDisposeNotifierProvider<AppProfile, AppProfile>.internal(
  AppProfile.new,
  name: r'appProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppProfile = AutoDisposeNotifier<AppProfile>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
