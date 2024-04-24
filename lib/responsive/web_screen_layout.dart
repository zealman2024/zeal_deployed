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
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: AppBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          tabController.selectedIndex.value == 0;
                        },
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            tabController.selectedIndex.value = 0;
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                              letterSpacing: 1.3,
                              fontSize: tabController.selectedIndex.value == 0
                                  ? 16
                                  : 16,
                              fontWeight: tabController.selectedIndex.value == 0
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: tabController.selectedIndex.value == 0
                                  ? mainColor
                                  : const Color.fromARGB(255, 50, 50, 50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            tabController.selectedIndex.value = 1;
                          },
                          child: Text(
                            'Products & Services',
                            style: TextStyle(
                              letterSpacing: 1.3,
                              fontSize: tabController.selectedIndex.value == 1
                                  ? 16
                                  : 16,
                              fontWeight: tabController.selectedIndex.value == 1
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: tabController.selectedIndex.value == 1
                                  ? mainColor
                                  : const Color.fromARGB(255, 50, 50, 50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            tabController.selectedIndex.value = 2;
                          },
                          child: Text(
                            'Facilities',
                            style: TextStyle(
                              letterSpacing: 1.3,
                              fontSize: tabController.selectedIndex.value == 2
                                  ? 16
                                  : 16,
                              fontWeight: tabController.selectedIndex.value == 2
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: tabController.selectedIndex.value == 2
                                  ? mainColor
                                  : const Color.fromARGB(255, 50, 50, 50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            tabController.selectedIndex.value = 3;
                          },
                          child: Text(
                            'About',
                            style: TextStyle(
                              fontSize: tabController.selectedIndex.value == 3
                                  ? 16
                                  : 16,
                              fontWeight: tabController.selectedIndex.value == 3
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: tabController.selectedIndex.value == 3
                                  ? mainColor
                                  : const Color.fromARGB(255, 50, 50, 50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 50),
                    ],
                  ),
                ],
              ),
              backgroundColor: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
      ),
      body: Obx(() => tabs[tabController.selectedIndex.value]),
    );
  }
}
