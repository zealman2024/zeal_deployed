import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "From Imagination to Innovation",
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 34,
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                isMobile
                    ? const SizedBox(
                        height: 4,
                      )
                    : const SizedBox(),
                Text(
                  "We Craft the Hardware You Dream Of",
                  style: TextStyle(
                    fontSize: isMobile ? 12 : 28,
                    color: blackColor,
                    fontWeight: FontWeight.w600,
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
