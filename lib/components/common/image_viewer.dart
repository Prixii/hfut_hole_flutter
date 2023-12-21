import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hoverable_icon.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/util/network_util.dart';
import 'package:unicons/unicons.dart';

class ImageViewer extends ConsumerStatefulWidget {
  const ImageViewer({super.key, required this.index});
  final int index;
  @override
  ConsumerState<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends ConsumerState<ImageViewer> {
  late List<String> imgUrlList =
      ref.watch(pageStateProvider).holeState.hole.imgs;

  bool showImageSwitcher = false;
  late int index;
  late int quarterTurns;

  @override
  void initState() {
    index = widget.index;
    quarterTurns = 0;

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
              maxScale: 10,
              child: RotatedBox(
                quarterTurns: quarterTurns,
                child: CachedNetworkImage(
                    width: double.infinity, imageUrl: imgUrlList[index]),
              ),
            ),
          ),
          _buildToolBar(),
        ]),
      ),
    );
  }

  Widget _buildToolBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverableIcon(
              iconData: UniconsLine.crop_alt_rotate_left,
              iconSize: 36,
              size: 48,
              borderRadius: 8,
              onTap: () =>
                  {setState(() => quarterTurns = (quarterTurns - 1) % 4)},
            ),
            const SizedBox(width: 8),
            HoverableIcon(
              iconData: UniconsLine.download_alt,
              iconSize: 36,
              size: 48,
              borderRadius: 8,
              onTap: () => imgUrlList[index].downloadPicture(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchButton() {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: HoverableIcon(
          iconData: UniconsLine.arrow_circle_left,
          iconColor: Colors.grey[50],
          iconSize: 40,
          onTap: previousImage,
        ),
      ),
      Expanded(child: Container()),
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: HoverableIcon(
          iconData: UniconsLine.arrow_circle_right,
          iconColor: Colors.grey[50],
          iconSize: 40,
          onTap: nextImage,
        ),
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
