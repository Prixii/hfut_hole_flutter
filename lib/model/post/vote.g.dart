// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoteImpl _$$VoteImplFromJson(Map<String, dynamic> json) => _$VoteImpl(
      id: json['id'] as String,
      createAt: json['createAt'] as String,
      type: json['type'] as String,
      endTime: json['endTime'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => VoteItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isVoted: json['isVoted'] as bool,
      totalCount: json['totalCount'] as int,
      isExpired: json['isExpired'] as bool,
    );

Map<String, dynamic> _$$VoteImplToJson(_$VoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'type': instance.type,
      'endTime': instance.endTime,
      'items': instance.items,
      'isVoted': instance.isVoted,
      'totalCount': instance.totalCount,
      'isExpired': instance.isExpired,
    };

_$VoteItemImpl _$$VoteItemImplFromJson(Map<String, dynamic> json) =>
    _$VoteItemImpl(
      id: json['id'] as String,
      createAt: json['createAt'] as String,
      option: json['option'] as String,
      count: json['count'] as int,
      isVoted: json['isVoted'] as bool,
    );

Map<String, dynamic> _$$VoteItemImplToJson(_$VoteItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'option': instance.option,
      'count': instance.count,
      'isVoted': instance.isVoted,
    };
