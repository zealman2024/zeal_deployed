import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/global/pallet.dart';

class AboutContainer extends StatelessWidget {
  final bool isMobile;
  const AboutContainer({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: isMobile ? 150 : 450,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/about_image.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: isMobile ? -35 : -50,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 30 : 60, vertical: isMobile ? 10 : 20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Zeal Manufacturing Company",
                  style: GoogleFonts.libreCaslonText(
                    textStyle: TextStyle(
                      fontSize: isMobile ? 16 : 34,
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                isMobile
                    ? const SizedBox(
                        height: 4,
                      )
                    : const SizedBox(),
                Text(
                  "Expertise in metal manufacturing",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: isMobile ? 12 : 18,
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
