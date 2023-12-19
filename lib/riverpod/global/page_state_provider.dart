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
    return PageStateData.init();
  }

  void openHole(Hole hole) {
    var newHoleState = state.holeState.copyWith(
      hole: hole,
    );
    var newAppState = state.appState.copyWith(
      showHole: true,
    );

    state = state.copyWith(
      holeState: newHoleState,
      appState: newAppState,
    );
  }

  void closeHole() {
    var newAppState = state.appState.copyWith(
      showHole: false,
    );
    state = state.copyWith(appState: newAppState);
  }
}

@freezed
class PageStateData with _$PageStateData {
  const factory PageStateData({
    required HoleStateData holeState,
    required AppStateData appState,
  }) = _PageStateData;

  factory PageStateData.init() => PageStateData(
        holeState: HoleStateData.init(),
        appState: AppStateData.init(),
      );
}

@freezed
class HoleStateData with _$HoleStateData {
  const factory HoleStateData({
    required Hole hole,
    @Default(null) HoleClassification? classification,
    @Default(HoleListMode.hot) HoleListMode listMode,
    @Default(HoleDetailCommentMode.all) HoleDetailCommentMode commentMode,
    @Default(HoleDetailCommentOrder.favorite)
    HoleDetailCommentOrder commentOrder,
    @Default(0) int commentPage,
    @Default(0) int commentTotal,
    @Default(0) int commentPageSize,
  }) = _HoleStateData;

  factory HoleStateData.init() => HoleStateData(hole: Hole.empty());
}

@freezed
class AppStateData with _$AppStateData {
  const factory AppStateData({
    required Pages page,
    required bool showHole,
  }) = _AppStateData;

  factory AppStateData.init() => AppStateData(
        page: Pages.home,
        showHole: false,
      );
}
