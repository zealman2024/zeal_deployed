import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/about_screen.dart';
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
    final size = MediaQuery.of(context).size;
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
              backgroundColor: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // const SizedBox(height: 100),
            Container(
              height: 500,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hero_image.png"),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 800,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Zeal Manufacturing Company",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 800,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Experts in Metal Manufacturing",
                        style: GoogleFonts.lora(
                          fontStyle: FontStyle.italic,
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            tabController.launchMailto();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF0094DA),
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Contact Us",
                              style: GoogleFonts.montserrat(
                                fontStyle: FontStyle.italic,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 26),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const MobileAboutScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: const Color(0XFF0094DA),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "About Us",
                              style: GoogleFonts.montserrat(
                                fontStyle: FontStyle.italic,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // const HeroSlider(
            //   isMobile: true,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(height: 16),

                  // const AboutContainer(
                  //   isMobile: true,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0)
                        .copyWith(top: 50),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium and heavy categories.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ),
                  // const SizedBox(height: 14),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (context) => const MobileAboutScreen()));
                  //   },
                  //   child: Container(
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 6, vertical: 3),
                  //     decoration: BoxDecoration(
                  //       color: buttonColor,
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //     child: const Text(
                  //       "Read More",
                  //       style: TextStyle(
                  //         color: whiteColor,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w500,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Areas of Service",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                      const Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/defence.png",
                              text: "Defense Sector"),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/hydrolics.png",
                              text: "Industrial Hydraulics"),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/medical.png",
                              text: "Medical Electronics"),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/airports.png",
                              text: "Infrastructure-Airports"),
                          ProductsCard(
                              isMobile: true,
                              imagePath: "assets/images/services/food.png",
                              text: "Food Industry"),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/services/architecture.png",
                              text: "Architecture"),
                        ],
                      ),
                      const SizedBox(
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
