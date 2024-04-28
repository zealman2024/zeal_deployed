import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/widget/facilites_card.dart';
import 'package:zeal_new/widget/web_footer.dart';

class FacilitiesScreen extends StatelessWidget {
  const FacilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50).copyWith(top: 80),
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
                  const SizedBox(height: 32),
                  const Column(
                    children: [
                      Wrap(
                        spacing: 20,
                        runSpacing: 32,
                        children: [
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/lc.png",
                            title: "Laser Cutting",
                            text:
                                "Precision cuts for flawless electrical panels.",
                          ),
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/b.png",
                            title: "Bending",
                            text:
                                "Precise shaping of sheet metal to fulfill specific electrical requirements",
                          ),
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/p-1.png",
                            title: "Punching",
                            text:
                                "Clean holes for flawless electrical panel functionality.",
                          ),
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/w.png",
                            title: "Welding (ARC / TIG / MIG)",
                            text:
                                "Strong, secure connections for reliable electrical performance.",
                          ),
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/p.png",
                            title: "Painting",
                            text:
                                "Professional finishes for long-lasting aesthetics and protection.",
                          ),
                          FacilitiesCard(
                            imagePath: "assets/images/facilities/dd.png",
                            title: "Design and Development  (2D and 3D)",
                            text:
                                "Material: Mild Steel, Stainless Steel, Aluminum of all grades",
                          ),
                          FacilitiesCard(
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
            const SizedBox(height: 36),
            WebFooter(),
          ],
        ),
      ),
    );
  }
}
