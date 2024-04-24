import 'package:flutter/material.dart';
import 'package:zeal_new/controllers/tab_controller.dart';

import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/about_screen.dart';
import 'package:zeal_new/widget/about_container.dart';
import 'package:zeal_new/widget/hero_slider.dart';
import 'package:zeal_new/widget/product_card.dart';
import 'package:zeal_new/widget/web_footer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabControllre = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                SizedBox(height: 80),
                HeroSlider(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.12)
                        .copyWith(top: 100),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AboutScreen(ishome: false),
                        ),
                      );
                    },
                    child: const Text(
                      "Read More",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 62),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Areas of Service",
                        style: TextStyle(
                          fontSize: 24,
                          color: textColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 36),
                      Wrap(
                        spacing: 16,
                        runSpacing: 24,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          ProductsCard(
                              imagePath: "assets/images/services/defence.png",
                              text: "Defense Sector"),
                          ProductsCard(
                              imagePath: "assets/images/services/hydrolics.png",
                              text: "Industrial Hydraulics"),
                          ProductsCard(
                              imagePath: "assets/images/services/medical.png",
                              text: "Medical Electronics"),
                          ProductsCard(
                              imagePath: "assets/images/services/airports.png",
                              text: "Infrastructure-Airports"),
                          ProductsCard(
                              imagePath: "assets/images/services/food.png",
                              text: "Food Industry"),
                          ProductsCard(
                              imagePath:
                                  "assets/images/services/architecture.png",
                              text: "Architecture"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            WebFooter(),
          ],
        ),
      ),
    );
  }
}
