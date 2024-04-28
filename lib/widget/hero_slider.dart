import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:get/get.dart';

class HeroSlider extends StatefulWidget {
  final bool isMobile;
  const HeroSlider({
    super.key,
    this.isMobile = false,
  });

  @override
  State<HeroSlider> createState() => _HeroSliderState();
}

class _HeroSliderState extends State<HeroSlider> {
  int _activeIndex = 0;
  final carouselController = CarouselController();
  final tabControllre = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: tabControllre.urlImages.length,
          itemBuilder: (context, index, realIndex) {
            return ImageSlider(
              image: tabControllre.urlImages[index],
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 6,
            viewportFraction: 0.9,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _activeIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: SliderIndicator(
              activeIndex: _activeIndex, isMobile: GetPlatform.isMobile),
        ),
        Positioned(
          left: GetPlatform.isMobile ? 35 : 100,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              if (_activeIndex == 0) {
                _activeIndex = tabControllre.urlImages.length - 1;
              }
              _activeIndex--;
              carouselController.previousPage();
            },
            child: Container(
              padding: GetPlatform.isMobile
                  ? const EdgeInsets.all(9)
                  : const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: Color.fromARGB(180, 255, 255, 255),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/left.png",
                  height: GetPlatform.isMobile ? 20 : 40,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: GetPlatform.isMobile ? 35 : 100,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              if (_activeIndex == tabControllre.urlImages.length - 1) {
                _activeIndex = 0;
              }
              _activeIndex++;
              carouselController.nextPage();
            },
            child: Container(
              padding: GetPlatform.isMobile
                  ? const EdgeInsets.all(9)
                  : const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: Color.fromARGB(180, 255, 255, 255),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/right.png",
                  height: GetPlatform.isMobile ? 20 : 40,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ImageSlider extends StatelessWidget {
  final String image;

  const ImageSlider({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetPlatform.isMobile ? 300 : 550,
      decoration: BoxDecoration(
        border:
            Border.all(width: GetPlatform.isMobile ? 1.5 : 3, color: mainColor),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class SliderIndicator extends StatelessWidget {
  final bool isMobile;
  final int activeIndex;
  SliderIndicator({
    super.key,
    required this.activeIndex,
    this.isMobile = false,
  });
  final tabControllre = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        tabControllre.urlImages.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isMobile ? 4 : 8,
          margin: isMobile
              ? const EdgeInsets.symmetric(horizontal: 2)
              : const EdgeInsets.symmetric(horizontal: 4),
          width: activeIndex == index ? 32 : 8,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 70, 70, 70),
                blurRadius: 5.0,
                spreadRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
