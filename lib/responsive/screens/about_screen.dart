import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/widget/about_container.dart';
import 'package:zeal_new/widget/web_footer.dart';

class AboutScreen extends StatelessWidget {
  final bool ishome;
  AboutScreen({
    super.key,
    this.ishome = true,
  });
  final tabController = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ishome == false
          ? PreferredSize(
              preferredSize: const Size(
                double.infinity,
                56.0,
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: AppBar(
                    automaticallyImplyLeading: false,
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                              fontSize: tabController.selectedIndex.value == 0
                                  ? 18
                                  : 16,
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Products & Services',
                            style: TextStyle(
                              fontSize: tabController.selectedIndex.value == 1
                                  ? 18
                                  : 16,
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Facilities',
                            style: TextStyle(
                              fontSize: tabController.selectedIndex.value == 2
                                  ? 18
                                  : 16,
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            'About',
                            style: TextStyle(
                              fontSize: tabController.selectedIndex.value == 3
                                  ? 18
                                  : 16,
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
            )
          : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Text(
                    "Zeal Manufacturing Company",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 36),
                  const AboutContainer(),
                  const SizedBox(height: 72),
                  const Text(
                    textAlign: TextAlign.center,
                    'Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. We ZMC is committed to achieving sustained business excellence by integrating its quality values at all levels to anticipate, meet and exceed customer expectations and continuously improve the work to deliver the "Best in Quality Sheet Metal Products and precision machined parts" and more cost effectively than its competitors.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 52),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who We are",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Zeal Manufacturing Company provides",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "• High precision customized Sheet Metal - Parts, assemblies.\n• CNC Machined and Turned parts\n• Custom Made Industrial Racks\n• Architecture Metal Manufacturing Support\n• Rapid Prototyping Parts - ( RPT)\n• Stainless Steel product & Assembly\n• Heavy Engineering works\n• Aluminum parts and assemblies\n• Certified Welding and assembly team.\n• Team of good qualified engineers for better quality and problem solving",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Our engineering team supports clients requirement using computer aided manufacturing software to  provide more realistic view of parts and assemblies to avoid rejections which will intern save  energy and time.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 36),
                      Text(
                        "Explore Our Product Collection",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "• Customised sheet metal parts manufacturing\n• Machined parts\n• Turned parts\n• Military grade assemblies and Rugged enclosures.\n• Stainless Steel Food grade products\n• Aluminium consoles and milled parts\n• Special Purpose machines\n• Electrical Wiring and testing",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: aboutColor,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "OUR IMPORTS & EXPORTS",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "WE DO EXPORT TO",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "USA-TEXAS AND CALIFORNIA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "ARAB",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "WE HAVE IMPORT FROM",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "CHINA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "CANADA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "SOUTH AFRICA AND",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "USA....ETC",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 62),
            WebFooter(),
          ],
        ),
      ),
    );
  }
}
