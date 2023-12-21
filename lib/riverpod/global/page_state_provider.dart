import 'package:freezed_annotation/freezed_annotation.dart';
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
    state = state.copyWith(
      holeState: newHoleState,
      showHole: true,
    );
  }

  void closeHole() {
    state = state.copyWith(
      showHole: false,
    );
  }

  void setPage(Pages page) {
    state = state.copyWith(
      page: page,
    );
  }

  Future<void> fetchMoreHole(int? page, int? limit) async {
    if (!state.isFetchingHole) {
      state = state.copyWith(
        isFetchingHole: true,
      );
    }
    var response = await holeClient.getHoleListRequest(
        page: page ?? state.holeListPage, limit: limit ?? state.holeListLimit);
    if (response.statusCode == 200) {
      if (response.data["data"]["items"] != null) {
        List<Hole> list = [];
        for (var item in response.data["data"]["items"]) {
          list.add(Hole.fromJson(item));
        }
        state = state.copyWith(
          holeListPage:
              state.holeListPage + (limit ?? state.holeListLimit) ~/ 10,
          isFetchingHole: false,
          holeList: state.holeList + list,
        );
      }
    }
  }
}

@freezed
class PageStateData with _$PageStateData {
  const factory PageStateData({
    required bool isFetchingHole,
    required HoleStateData holeState,
    required Pages page,
    required bool showHole,
    required List<Hole> holeList,
    required int holeListPage,
    required int holeListLimit,
  }) = _PageStateData;

  factory PageStateData.init() => PageStateData(
        isFetchingHole: true,
        holeState: HoleStateData.init(),
        page: Pages.home,
        showHole: false,
        holeListPage: 1,
        holeListLimit: 10,
        holeList: [],
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
