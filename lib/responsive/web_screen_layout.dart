import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/about_screen.dart';
import 'package:zeal_new/responsive/screens/facilities_screen.dart';
import 'package:zeal_new/responsive/screens/home_screen.dart';
import 'package:zeal_new/responsive/screens/products_screen.dart';
import 'package:get/get.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  final tabController = Get.find<CustomTabController>();
  final tabs = [
    const HomeScreen(),
    const ProductsScreen(),
    const FacilitiesScreen(),
    AboutScreen(ishome: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AppBar(
              title: GestureDetector(
                onTap: () {
                  tabController.selectedIndex.value == 0;
                },
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 40,
                ),
              ),
              centerTitle: false,
              actions: [
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 0;
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize:
                            tabController.selectedIndex.value == 0 ? 18 : 16,
                        fontWeight: tabController.selectedIndex.value == 0
                            ? FontWeight.w600
                            : FontWeight.normal,
                        color: tabController.selectedIndex.value == 0
                            ? mainColor
                            : textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 1;
                    },
                    child: Text(
                      'Products & Services',
                      style: TextStyle(
                        fontSize:
                            tabController.selectedIndex.value == 1 ? 18 : 16,
                        fontWeight: tabController.selectedIndex.value == 1
                            ? FontWeight.w600
                            : FontWeight.normal,
                        color: tabController.selectedIndex.value == 1
                            ? mainColor
                            : textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 2;
                    },
                    child: Text(
                      'Facilities',
                      style: TextStyle(
                        fontSize:
                            tabController.selectedIndex.value == 2 ? 18 : 16,
                        fontWeight: tabController.selectedIndex.value == 2
                            ? FontWeight.w600
                            : FontWeight.normal,
                        color: tabController.selectedIndex.value == 2
                            ? mainColor
                            : textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 3;
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize:
                            tabController.selectedIndex.value == 3 ? 18 : 16,
                        fontWeight: tabController.selectedIndex.value == 3
                            ? FontWeight.w600
                            : FontWeight.normal,
                        color: tabController.selectedIndex.value == 3
                            ? mainColor
                            : textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
              ],
              backgroundColor: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ),
      body: Obx(() => tabs[tabController.selectedIndex.value]),
    );
  }
}
