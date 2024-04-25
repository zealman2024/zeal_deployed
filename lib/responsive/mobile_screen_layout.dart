import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_about_screen.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:get/get.dart';
import 'package:zeal_new/widget/about_container.dart';
import 'package:zeal_new/widget/hero_slider.dart';
import 'package:zeal_new/widget/menue_button.dart';
import 'package:zeal_new/widget/mobile_footer.dart';
import 'package:zeal_new/widget/product_card.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  final tabController = Get.find<CustomTabController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MobileMenueScreen(),
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
              title: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 28,
                ),
              ),
              centerTitle: true,
              actions: const [
                MenueButton(),
                SizedBox(width: 10),
              ],
              backgroundColor: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 100),
            const HeroSlider(
              isMobile: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    "Zeal Manufacturing Company",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const AboutContainer(
                    isMobile: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0)
                        .copyWith(top: 50),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MobileAboutScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Read More",
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Areas of Service",
                          style: TextStyle(
                            fontSize: 16,
                            color: textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 21),
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/defence.png",
                              text: "Defense Sector"),
                          SizedBox(
                            height: 20,
                          ),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/hydrolics.png",
                              text: "Industrial Hydraulics"),
                          SizedBox(
                            height: 20,
                          ),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/medical.png",
                              text: "Medical Electronics"),
                          SizedBox(
                            height: 20,
                          ),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/airports.png",
                              text: "Infrastructure-Airports"),
                          SizedBox(
                            height: 20,
                          ),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/food.png",
                              text: "Food Industry"),
                          SizedBox(
                            height: 20,
                          ),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/services/architecture.png",
                              text: "Architecture"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            MobileFooter()
          ],
        ),
      ),
    );
  }
}
