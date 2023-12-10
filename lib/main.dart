import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/router.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:logger/logger.dart';

final logger = Logger(printer: PrettyPrinter());

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      routerConfig: router,
      theme: lightTheme,
    );
  }
}
