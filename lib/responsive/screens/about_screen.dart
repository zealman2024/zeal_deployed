import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  const AboutContainer(),
                  const SizedBox(height: 72),
                  const Text(
                    textAlign: TextAlign.center,
                    'Zeal Manufacturing Company is an ISO 9001-2015-certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. Zeal Manufacturing is dedicated to attaining sustained business excellence through continuous improvement. We achieve this by integrating our unwavering commitment to quality at every stage, ensuring the most cost-effective delivery of high-quality sheet metal products and precise machined parts.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 52),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who We are",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        "Zeal Manufacturing Company provides",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'High precision customized Sheet Metal - Parts, assemblies.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'CNC Machined and Turned parts',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Custom Made Industrial Racks',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Architecture Metal Manufacturing Support',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Rapid Prototyping Parts - ( RPT)',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Stainless Steel product & Assembly',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Heavy Engineering works',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Aluminum parts and assemblies',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Certified Welding and assembly team.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Team of good qualified engineers for better quality and problem solving',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Our engineering team supports client requirements using Computer Aided Manufacturing software to provide more realistic view of parts and assemblies to avoid rejections, which will save energy and time.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 36),
                      Text(
                        "Explore Our Product Collection",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Customised sheet metal parts manufacturing',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Machined parts',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Turned parts',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Military grade assemblies and Rugged enclosures.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Stainless steel food grade products',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Aluminium consoles and Milled parts',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Special purpose machines',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 20,
                        ),
                        title: Text(
                          'Electrical wiring and Testing',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
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
                    child: Column(
                      children: [
                        Text(
                          "OUR IMPORTS & EXPORTS",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 46),
                        Text(
                          "WE DO EXPORT TO",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "USA-TEXAS AND CALIFORNIA",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "EUROPE ",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "ARAB",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "WE HAVE IMPORT FROM",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "CHINA",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "CANADA",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "EUROPE",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "SOUTH AFRICA AND",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                        ),
                        Text(
                          "USA....ETC",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: textColor,
                            ),
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
