import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_profile.freezed.dart';
part 'app_profile.g.dart';

@freezed
class AppProfile with _$AppProfile {
  const factory AppProfile({
    @Default("") String studentId,
    @Default("") String password,
  }) = _AppProfile;

  factory AppProfile.fromJson(Map<String, dynamic> json) =>
      _$AppProfileFromJson(json);
}

final appProfileProvider = Provider<AppProfile>((ref) {
  return const AppProfile();
});
