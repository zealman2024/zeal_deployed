import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/mobile_screen_layout.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:zeal_new/widget/about_container.dart';
import 'package:zeal_new/widget/menue_button.dart';
import 'package:zeal_new/widget/mobile_footer.dart';

class MobileAboutScreen extends StatelessWidget {
  const MobileAboutScreen({super.key});

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
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const MobileScreenLayout(),
                      ),
                      (route) => false);
                },
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Text(
                    "Zeal Manufacturing Company",
                    style: GoogleFonts.libreCaslonText(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const AboutContainer(
                    isMobile: true,
                  ),
                  const SizedBox(height: 62),
                  const Text(
                    textAlign: TextAlign.justify,
                    'Zeal Manufacturing Company is an ISO 9001-2015-certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. Zeal Manufacturing is dedicated to attaining sustained business excellence through continuous improvement. We achieve this by integrating our unwavering commitment to quality at every stage, ensuring the most cost-effective delivery of high-quality sheet metal products and precise machined parts.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who We are",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Zeal Manufacturing Company provides",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'High precision customized Sheet Metal - Parts, assemblies.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'CNC Machined and Turned Parts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Custom Made Industrial Racks',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Architecture Metal Manufacturing Support',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Rapid Prototyping Parts - ( RPT)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Stainless Steel Product & Assembly',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Heavy Engineering Works',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Aluminum Aarts and Assemblies',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Certified Welding and Assembly Team.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Team of good qualified engineers for better quality and problem solving',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Our engineering team supports client requirements using Computer Aided Manufacturing software to provide more realistic view of parts and assemblies to avoid rejections, which will save energy and time.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Explore Our Product Collection",
                        style: GoogleFonts.libreCaslonText(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Customised sheet metal parts manufacturing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Machined parts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Turned parts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Military grade assemblies and Rugged enclosures.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Stainless steel food grade products',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Aluminium consoles and Milled parts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Special purpose machines',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.api_rounded,
                          size: 16,
                        ),
                        title: Text(
                          'Electrical wiring and Testing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
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
