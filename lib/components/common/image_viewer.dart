import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hoverable_icon.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:unicons/unicons.dart';

class ImageViewer extends ConsumerStatefulWidget {
  const ImageViewer({super.key, required this.index});
  final int index;
  @override
  ConsumerState<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends ConsumerState<ImageViewer> {
  bool showImageSwitcher = false;
  late int index;

  @override
  void initState() {
    index = widget.index;

    super.initState();
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
              child: InteractiveViewer(
                  child: CachedNetworkImage(
                      imageUrl: ref
                          .watch(pageStateProvider)
                          .holeState
                          .hole
                          .imgs[index]))),
          SizedBox(
            height: 50,
            child: Container(
              color: primaryColor,
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildSwitchButton() {
    return Row(children: [
      HoverableIcon(
        iconData: UniconsLine.arrow_circle_left,
        iconColor: Colors.grey[50],
        iconSize: 40,
        onTap: previousImage,
      ),
      Expanded(child: Container()),
      HoverableIcon(
        iconData: UniconsLine.arrow_circle_right,
        iconColor: Colors.grey[50],
        iconSize: 40,
        onTap: nextImage,
      ),
    ]);
  }

  void nextImage() {
    if (index < ref.watch(pageStateProvider).holeState.hole.imgs.length - 1) {
      setState(() => index += 1);
    }
  }

  void previousImage() {
    if (index > 0) {
      setState(() => index -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(color: Colors.grey.withOpacity(0.1))),
        Row(
          children: [
            Expanded(child: Container()),
            Expanded(
              flex: 2,
              child: MouseRegion(
                onEnter: (_) => setState(() => showImageSwitcher = true),
                onExit: (_) => setState(() => showImageSwitcher = false),
                child: Stack(children: [
                  _buildBody(),
                  showImageSwitcher ? _buildSwitchButton() : Container(),
                ]),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
