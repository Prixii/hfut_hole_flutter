import 'dart:convert';
import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfut_hole_flutter/components/common/hole_card.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';

class HoleMasonryLayout extends StatelessWidget {
  const HoleMasonryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(File('lib/model/hole/test.json').readAsStringSync());
    var holeList = HoleList.fromJson(json);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 0.0,
        itemCount: holeList.holes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => HoleCard(
          hole: holeList.holes[index],
        ),
      ),
    );
  }
}
