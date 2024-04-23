import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomTabController extends GetxController {
  final urlImages = [
    'images/hero/1.png',
    'images/hero/2.png',
    'images/hero/3.png',
    'images/hero/4.png',
    'images/hero/5.png',
    'images/hero/6.png',
    'images/hero/7.png',
    'images/hero/8.png',
    'images/hero/9.png',
  ];
  var selectedIndex = 0.obs;

  final isDefenceActive = false.obs;
  final isFoodActive = false.obs;
  final isArchiActive = false.obs;
  final isHome = true.obs;
  void launchMailClient(String targetEmail) async {
    String mailUrl = 'mailto:$targetEmail';
    try {
      await launchUrlString(mailUrl);
    } catch (e) {
      await Clipboard.setData(ClipboardData(text: targetEmail));
    }
  }
}
