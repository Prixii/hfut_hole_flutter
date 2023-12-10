// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      avatar: json['avatar'] as String,
      level: Level.fromJson((json['level'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'role': _$RoleEnumMap[instance.role]!,
      'avatar': instance.avatar,
      'level': instance.level,
    };

const _$RoleEnumMap = {
  Role.user: 'user',
  Role.admin: 'admin',
  Role.banned: 'banned',
};

_$LevelImpl _$$LevelImplFromJson(Map<String, dynamic> json) => _$LevelImpl(
      id: json['id'] as String,
      level: json['level'] as int,
      experience: json['experience'] as int,
      nextLevelRequiredExperience: json['nextLevelRequiredExperience'] as int,
    );

Map<String, dynamic> _$$LevelImplToJson(_$LevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'experience': instance.experience,
      'nextLevelRequiredExperience': instance.nextLevelRequiredExperience,
    };
