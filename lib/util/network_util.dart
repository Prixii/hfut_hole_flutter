import 'package:url_launcher/url_launcher.dart';

extension UrlLauncher on String {
  Future<void> launchAsUrl() async {
    final Uri url = Uri.parse(this);
    if (!await launchUrl(url)) {
      throw Exception('Error');
    }
  }
}
