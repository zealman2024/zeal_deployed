import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:zeal_new/widget/about_container.dart';
import 'package:zeal_new/widget/mobile_footer.dart';

class MobileAboutScreen extends StatelessWidget {
  const MobileAboutScreen({super.key});

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
              title: InkWell(
                onTap: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 28,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MobileMenueScreen(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/images/menu.svg",
                    height: 20,
                  ),
                ),
                const SizedBox(width: 10),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Text(
                    "Zeal Manufacturing Company",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const AboutContainer(
                    isMobile: true,
                  ),
                  const SizedBox(height: 62),
                  const Text(
                    textAlign: TextAlign.center,
                    'Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. We ZMC is committed to achieving sustained business excellence by integrating its quality values at all levels to anticipate, meet and exceed customer expectations and continuously improve the work to deliver the "Best in Quality Sheet Metal Products and precision machined parts" and more cost effectively than its competitors.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who We are",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Zeal Manufacturing Company provides",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "• High precision customized Sheet Metal - Parts, assemblies.\n• CNC Machined and Turned parts\n• Custom Made Industrial Racks\n• Architecture Metal Manufacturing Support\n• Rapid Prototyping Parts - ( RPT)\n• Stainless Steel product & Assembly\n• Heavy Engineering works\n• Aluminum parts and assemblies\n• Certified Welding and assembly team.\n• Team of good qualified engineers for better quality and problem solving",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Our engineering team supports clients requirement using computer aided manufacturing software to  provide more realistic view of parts and assemblies to avoid rejections which will intern save  energy and time.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "Explore Our Product Collection",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "• Customised sheet metal parts manufacturing\n• Machined parts\n• Turned parts\n• Military grade assemblies and Rugged enclosures.\n• Stainless Steel Food grade products\n• Aluminium consoles and milled parts\n• Special Purpose machines\n• Electrical Wiring and testing",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: aboutColor,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "OUR IMPORTS & EXPORTS",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "WE DO EXPORT TO",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "USA-TEXAS AND CALIFORNIA",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "ARAB",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "WE HAVE IMPORT FROM",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "CHINA",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "CANADA",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "SOUTH AFRICA AND",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "USA....ETC",
                          style: TextStyle(
                            fontSize: 16,
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
            const SizedBox(height: 32),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
