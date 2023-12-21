import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/gen/fonts.gen.dart';

final lightTheme = FluentThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    checkboxTheme: CheckboxThemeData(
      uncheckedDecoration: ButtonState.resolveWith(
        (states) => BoxDecoration(
          borderRadius: BorderRadius.zero,
          border: Border.all(
            color: states.isDisabled ? Colors.grey : Colors.grey[50],
          ),
          color: Colors.grey[10],
        ),
      ),
      checkedDecoration: ButtonState.resolveWith(
        (states) => BoxDecoration(
          borderRadius: BorderRadius.zero,
          border: Border.all(
            color:
                states.isDisabled ? Colors.grey : primaryColor.withOpacity(0.7),
          ),
          color: primaryColor,
        ),
      ),
    ));

final darkTheme = FluentThemeData.dark();

const baseFont = TextStyle(fontFamily: FontFamily.sourceHanSans);

final fontTitle = baseFont.copyWith(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final fontSubTitle = baseFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w100,
);
final fontSubTitleBold = baseFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
final fontBody = baseFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.normal,
);
final fontBodyBold = baseFont.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
final fontSmallerBody = baseFont.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.normal,
);
final fontSmallerBodyBold = baseFont.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
final fontFoot = baseFont.copyWith(
  fontSize: 10,
  fontWeight: FontWeight.normal,
);

const primaryColor = Color.fromARGB(255, 55, 134, 203);
const primaryColorDarker = Color.fromARGB(255, 43, 108, 165);
