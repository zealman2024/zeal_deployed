import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_new/responsive/mobile_screen_layout.dart';
import 'package:zeal_new/responsive/responsive_layout.dart';
import 'package:zeal_new/responsive/web_screen_layout.dart';

class NavigationController extends GetxController {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const ResponsiveLayoutScreen(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ResponsiveLayoutScreen(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout(),
          ),
        );
    }
  }
}
