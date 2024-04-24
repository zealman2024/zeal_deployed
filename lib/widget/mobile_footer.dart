import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              const Row(
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
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "ISO 9001-2015",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "ISO 14001",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Welder Qualiffications - WTS",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
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
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Electric panel (Indoor/Outdore) ",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Machined And Turned Parts",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Mechanical Assembly",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Hydraulic Tanks & Power Packs",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Electro Mechanical Assembly",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Rugged Enclosures",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    "No. 48 / A , 2nd Cross, 8th Main Road,kempammaLayout, Lakshmidevinagar,Bengaluru - 560096",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Contact :0 8 0 3 1 2 1 1 2 9 1",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Mob : + 9 1 9 0 6 0 0 4 6 1 1 8 , 8 3 1 0 3 2 1 5 5 4 ,",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 4),
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
