import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/about_screen.dart';
import 'package:zeal_new/widget/product_card.dart';
import 'package:zeal_new/widget/web_footer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabController = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 650,
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
                                fontSize: 52,
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
                                fontSize: 36,
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
                                    builder: (context) =>
                                        AboutScreen(ishome: false),
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
                // SizedBox(height: 80),
                //  AboutContainer(),
                // const SizedBox(height: 30),
                // HeroSlider(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  // const AboutContainer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Zeal Manufacturing Company is an ISO 9001-2015-certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. Zeal Manufacturing is dedicated to attaining sustained business excellence through continuous improvement. We achieve this by integrating our unwavering commitment to quality at every stage, ensuring the most cost-effective delivery of high-quality sheet metal products and precise machined parts.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.spaceEvenly,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          height: 400,
                          width: 265,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/saving.png",
                                height: 130,
                              ),
                              const SizedBox(height: 16),
                              Flexible(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Your Reliable Source",
                                  style: GoogleFonts.lora(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Image.asset(
                                "assets/images/s1.png",
                                height: 20,
                              ),
                              const SizedBox(height: 6),
                              Flexible(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Quality Metal Hardware, Delivered On Time.",
                                  style: GoogleFonts.hindMadurai(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          height: 400,
                          width: 265,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/fast-delivery.png",
                                height: 130,
                              ),
                              const SizedBox(height: 16),
                              Flexible(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Elevating Your Production",
                                  style: GoogleFonts.lora(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Image.asset(
                                "assets/images/s1.png",
                                height: 20,
                              ),
                              const SizedBox(height: 6),
                              Flexible(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Precision Metal Parts, Streamlined Supply Chain.",
                                  style: GoogleFonts.hindMadurai(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        width: 265,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/team.png",
                              height: 130,
                            ),
                            const SizedBox(height: 16),
                            Flexible(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Building Partnerships, Building Success",
                                style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              "assets/images/s1.png",
                              height: 20,
                            ),
                            const SizedBox(height: 6),
                            Flexible(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Your Trusted Metal Hardware Manufacturer.",
                                style: GoogleFonts.hindMadurai(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 36),
                  // ElevatedButton(
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(buttonColor),
                  //   ),
                  //   onPressed: () {},
                  //   child: const Text(
                  //     "Read More",
                  //     style: TextStyle(
                  //       color: whiteColor,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 120),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Areas of Service",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 36),
                      const Wrap(
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
