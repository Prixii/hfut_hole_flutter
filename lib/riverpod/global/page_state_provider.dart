import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hfut_hole_flutter/model/enums.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_state_provider.freezed.dart';
part 'page_state_provider.g.dart';

@riverpod
class PageState extends _$PageState {
  @override
  PageStateData build() {
    return PageStateData(hole: Hole.empty());
  }

  void openHole(Hole hole) {
    state = state.copyWith(hole: hole, showDetail: true);
  }

  void closeHole() {
    state = state.copyWith(showDetail: false);
  }
}

@freezed
class PageStateData with _$PageStateData {
  const factory PageStateData({
    required Hole hole,
    @Default(null) HoleClassification? classification,
    @Default(HoleListMode.hot) HoleListMode listMode,
    @Default(false) bool showDetail,
    @Default(HoleDetailCommentMode.all) HoleDetailCommentMode commentMode,
    @Default(HoleDetailCommentOrder.favorite)
    HoleDetailCommentOrder commentOrder,
    @Default(0) int commentPage,
    @Default(0) int commentTotal,
    @Default(0) int commentPageSize,
  }) = _PageStateData;
}
