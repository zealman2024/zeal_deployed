import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/mobile_screen_layout.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:zeal_new/widget/facilites_card.dart';
import 'package:zeal_new/widget/menue_button.dart';
import 'package:zeal_new/widget/mobile_footer.dart';

class MobileFacilitiesScreen extends StatelessWidget {
  const MobileFacilitiesScreen({super.key});

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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Facilities",
                    style: GoogleFonts.libreCaslonText(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    children: [
                      Wrap(
                        spacing: 8,
                        runSpacing: 16,
                        children: [
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/lc.png",
                            title: "Laser Cutting",
                            text:
                                "Precision cuts for flawless electrical panels.",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/b.png",
                            title: "Bending",
                            text:
                                "Precise shaping of sheet metal to fulfill specific electrical requirements",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/p-1.png",
                            title: "Punching",
                            text:
                                "Clean holes for flawless electrical panel functionality.",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/w.png",
                            title: "Welding (ARC / TIG / MIG)",
                            text:
                                "Strong, secure connections for reliable electrical performance.",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/p.png",
                            title: "Painting",
                            text:
                                "Professional finishes for long-lasting aesthetics and protection.",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/dd.png",
                            title: "Design and Development  (2D and 3D)",
                            text:
                                "Material: Mild Steel, Stainless Steel, Aluminum of all grades",
                          ),
                          FacilitiesCard(
                            isMobile: true,
                            imagePath: "assets/images/facilities/wt.png",
                            title: "Wiring and Testing",
                            text:
                                "Precision wiring and rigorous testing for ultimate electrical panel reliability",
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
