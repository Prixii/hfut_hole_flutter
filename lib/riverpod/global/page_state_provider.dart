import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/model/enums.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';
import 'package:hfut_hole_flutter/network/hole.dart';
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

  void setPage(Pages page) {
    var newAppState = state.appState.copyWith(
      page: page,
    );
    state = state.copyWith(appState: newAppState);
  }

  Future<void> fetchMoreHole() async {
    var response = await holeClient.getHoleListRequest();
    if (response.statusCode == 200) {
      logger.i(response.data);
      if (response.data["data"]["items"] != null) {
        List<Hole> list = [];
        for (var item in response.data["data"]["items"]) {
          list.add(Hole.fromJson(item));
        }
        _addHolesToList(list);
      }
    }
  }

  void _addHolesToList(List<Hole> newHoles) {
    var newAppState = state.appState.copyWith(
      holeList: state.appState.holeList + newHoles,
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
    required List<Hole> holeList,
  }) = _AppStateData;

  factory AppStateData.init() => const AppStateData(
        page: Pages.home,
        showHole: false,
        holeList: [],
      );
}
