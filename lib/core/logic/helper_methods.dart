import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void toGetNavigate(Widget page) {
  Navigator.push(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

MaterialColor getMaterialColor() {
  Color color = const Color(0xffEDBE2A);
  return MaterialColor(color.value, {
    50: color.withOpacity(.1),
    100: color.withOpacity(.2),
    200: color.withOpacity(.3),
    300: color.withOpacity(.4),
    400: color.withOpacity(.5),
    500: color.withOpacity(.6),
    600: color.withOpacity(.7),
    700: color.withOpacity(.8),
    800: color.withOpacity(.9),
    900: color,
  });
}

enum MessageType { success, fail, warning }

void showMessage(String message, {MessageType type = MessageType.fail}) {
  if (message.isNotEmpty) {
    ScaffoldMessenger.of(
      navigatorKey.currentContext!,
    ).showSnackBar(
      SnackBar(
        backgroundColor: type == MessageType.fail
            ? Colors.red
            : type == MessageType.warning
                ? Colors.yellow
                : Colors.green,
        content: Text(
          message,
          style: TextStyle(
            color: type == MessageType.fail
                ? Colors.white
                : type == MessageType.warning
                ? Colors.black
                : Colors.white,
          ),
        ),
      ),
    );
    print(message);
  }
}
