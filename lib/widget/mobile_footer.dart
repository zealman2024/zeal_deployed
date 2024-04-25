import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';

class MobileFooter extends StatelessWidget {
  MobileFooter({super.key});
  final tabController = Get.find<CustomTabController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20)
              .copyWith(top: 15, bottom: 20),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: footerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            border: Border(
              top: BorderSide(width: 1.5),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/fb.png',
                          height: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/insta.png',
                          height: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/twitter.png',
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our Certifications",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "ISO 9001-2015",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "ISO 14001",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Welder Qualiffications - WTS",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "EN 15085/2 Certiffication Under Process\n(Locomotive Welding Certifficate )",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Products",
                          style: GoogleFonts.libreCaslonText(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Electric panel (Indoor/Outdore) ",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Machined And Turned Parts",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Mechanical Assembly",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Hydraulic Tanks & Power Packs",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Electro Mechanical Assembly",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Rugged Enclosures",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Server & Control Racks",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
              .copyWith(bottom: 35),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: footerBlackColor,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us",
                    style: GoogleFonts.libreCaslonText(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    "No. 48 / A, 2nd Cross, 8th Main Road, Kempamma Layout, Lakshmidevinagar, Bengaluru - 560096",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Contact : 08031211291",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Mob : +91 9060046118 / 8310321554",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 12,
                spacing: 42,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      tabController.launchMailClient("info.zealman@gmail.com");
                    },
                    child: const Text(
                      "E-mail: info.zealman@gmail.com",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      tabController.launchMailClient("info@zealman.in");
                    },
                    child: const Text(
                      "info@zealman.in",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
