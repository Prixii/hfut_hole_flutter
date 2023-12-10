import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/hello/form_navigator.dart';
import 'package:hfut_hole_flutter/components/hello/two_columned_card.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Center(
        child: TwoColumnedCard(
          formWidget: FormNavigator(),
        ),
      ),
    );
  }
}
