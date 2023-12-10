import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String username,
    required Role role,
    required String avatar,
    required Level level,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class Level with _$Level {
  const factory Level({
    required String id,
    required int level,
    required int experience,
    required int nextLevelRequiredExperience,
  }) = _Level;

  factory Level.fromJson(Map<String, Object> json) => _$LevelFromJson(json);
}

enum Role { user, admin, banned }
