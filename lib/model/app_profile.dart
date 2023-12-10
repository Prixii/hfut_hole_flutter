import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_profile.freezed.dart';
part 'app_profile.g.dart';

@riverpod
class AppProfile extends _$AppProfile {
  @override
  AppProfile build() {
    return AppProfile();
  }
}

@freezed
class AppProfileData with _$AppProfileData {
  const factory AppProfileData({
    @Default("") String studentId,
    @Default("") String password,
    @Default("") String token,
  }) = _AppProfileData;

  factory AppProfileData.fromJson(Map<String, dynamic> json) =>
      _$AppProfileDataFromJson(json);
}
