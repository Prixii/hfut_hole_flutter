import 'package:file_picker/file_picker.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path/path.dart';

extension UrlLauncher on String {
  Future<void> launchAsUrl() async {
    final Uri url = Uri.parse(this);
    if (!await launchUrl(url)) {
      throw Exception('Error');
    }
  }

  Future<void> downloadPicture() async {
    String? directory = await FilePicker.platform.getDirectoryPath();
    if (directory == null || directory.isEmpty) {
      return;
    }
    File file = await DefaultCacheManager().getSingleFile(this);
    logger.d('[url]:$directory/img${extension(file.path)}');
    file.copySync('$directory/img${extension(file.path)}');
  }
}
