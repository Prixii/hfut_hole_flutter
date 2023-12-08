import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';
part 'vote.g.dart';

@freezed
class Vote with _$Vote {
  const factory Vote({
    required String id,
    required String createAt,
    required String type,
    required String endTime,
    required List<VoteItem> items,
    required bool isVoted,
    required int totalCount,
    required bool isExpired,
  }) = _Vote;

  factory Vote.fromJson(Map<String, dynamic> json) => _$VoteFromJson(json);
}

@freezed
class VoteItem with _$VoteItem {
  const factory VoteItem({
    required String id,
    required String createAt,
    required String option,
    required int count,
    required bool isVoted,
  }) = _VoteItem;
  factory VoteItem.fromJson(Map<String, dynamic> json) =>
      _$VoteItemFromJson(json);
}
