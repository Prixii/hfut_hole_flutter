import 'package:fluent_ui/fluent_ui.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

final Uri _url = Uri.parse('https://flutter.dev');

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: ScaffoldPage(
        content: Center(
          child: Column(
            children: [
              const Text('Hello World!'),
              FilledButton(
                  child: const Text("click!"), onPressed: () => _launchUrl())
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Error');
    }
  }
}
