import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/activable_button.dart';
import 'package:hfut_hole_flutter/riverpod/hello/hello_provider.dart';

class FormNavigator extends ConsumerWidget {
  const FormNavigator({super.key});

  Widget _buildNavigator() {
    return Consumer(
      builder: (builder, ref, child) {
        final page = ref.watch(helloProvider.select((value) => value.page));
        return Row(
          children: [
            Expanded(
              child: ActivableButton(
                text: "登录",
                isActive: page == HelloPage.login,
                inactiveColor: Colors.grey[10],
                // TODO
                onTap: () =>
                    ref.read(helloProvider.notifier).setPage(HelloPage.login),
              ),
            ),
            const SizedBox(width: 10),
            const Divider(
              direction: Axis.vertical,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ActivableButton(
                text: "注册",
                isActive: page == HelloPage.register,
                inactiveColor: Colors.grey[10],
                // TODO
                onTap: () => ref
                    .read(helloProvider.notifier)
                    .setPage(HelloPage.register),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.grey[10],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 36,
              child: _buildNavigator(),
            ),
            const SizedBox(height: 20),
            // TODO
            Expanded(child: ref.watch(helloProvider).currentPage),
          ],
        ),
      ),
    );
  }
}
