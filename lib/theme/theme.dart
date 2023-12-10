import 'package:fluent_ui/fluent_ui.dart';

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

const fontTitle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
const fontSubTitle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w100,
);
const fontSubTitleBold = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
const fontBody = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
);
const fontFoot = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.normal,
);

const primaryColor = Color.fromARGB(255, 55, 134, 203);
