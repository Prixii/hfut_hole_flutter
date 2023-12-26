import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/hoverable_icon.dart';
import 'package:hfut_hole_flutter/components/setting/setting_item.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';
import 'package:hfut_hole_flutter/router.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:unicons/unicons.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const divider = [
    SizedBox(height: 4),
    Divider(),
    SizedBox(height: 4),
  ];

  Row _buildTopBar() {
    return Row(
      children: [
        Text(
          "设置",
          style: fontTitle,
          textAlign: TextAlign.left,
        ),
        Expanded(child: Container()),
        HoverableIcon(
          iconData: UniconsLine.sun,
          onTap: () => {
            // TODO 暗黑模式
          },
          size: 32,
          iconSize: 32,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTopBar(),
          const SizedBox(height: 20),
          Column(
            children: [
              const HelloPageSetter(),
              SettingItem(
                iconData: UniconsLine.user,
                title: "item",
                onTap: () => {},
              ),
              SettingItem(
                iconData: UniconsLine.user,
                title: "item",
                onTap: () => {},
              ),
              ...divider,
              SettingItem(
                iconData: UniconsLine.exit,
                title: "登出",
                onTap: () {
                  showDialog<bool>(
                    context: context,
                    builder: (context) => ContentDialog(
                      title: Text(
                        "确定要退出吗",
                        style: fontTitle,
                      ),
                      actions: [
                        Button(
                          child: const Text('退出'),
                          onPressed: () {
                            Navigator.pop(context, true);
                            router.go('/hello');
                            AppProfile.logout();
                          },
                        ),
                        FilledButton(
                          child: const Text('算了'),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      ],
                    ),
                  );
                },
                color: Colors.errorPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HelloPageSetter extends StatelessWidget {
  const HelloPageSetter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingItem(
      iconData: UniconsLine.user,
      title: "欢迎页",
      onTap: () => {},
      child: ComboBox<String>(
        items: [],
      ),
    );
  }
}
