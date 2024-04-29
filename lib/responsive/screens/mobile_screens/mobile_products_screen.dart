import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/mobile_screen_layout.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:zeal_new/widget/menue_button.dart';
import 'package:zeal_new/widget/mobile_footer.dart';
import 'package:zeal_new/widget/product_card.dart';

class MobileProductsPage extends StatelessWidget {
  MobileProductsPage({super.key});
  final tabController = Get.find<CustomTabController>();

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
              padding: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(top: 90, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            tabController.isDefenceActive.value =
                                !tabController.isDefenceActive.value;
                          },
                          child: Row(
                            children: [
                              Text(
                                "Defence Sector",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isDefenceActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                tabController.isDefenceActive.value ? 26 : 16),
                        tabController.isDefenceActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 16,
                                    children: [
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/re.jpeg",
                                          text: "RUGGED ENCLOSURES"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/scr.jpeg",
                                          text: "SERVER & CONTROL RACKS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/htpp.jpeg",
                                          text:
                                              "HYDRAULIC TANKS AND POWER PACKS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/mtp.jpeg",
                                          text: "MACHINED AND TURNED PARTS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/ep.jpeg",
                                          text:
                                              "ELECTRIC PANEL (INDOOR/OUTDOOR)"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/ma.jpeg",
                                          text: "MECHANICAL ASSEMBLY"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/defence/psmc.jpeg",
                                          text:
                                              "PRECISION SHEET METAL COMPONENT"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            tabController.isFoodActive.value =
                                !tabController.isFoodActive.value;
                          },
                          child: Row(
                            children: [
                              Text(
                                "Food Processing Industry",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isFoodActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: tabController.isFoodActive.value ? 26 : 16),
                        tabController.isFoodActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 16,
                                    children: [
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/hdt.jpg",
                                          text: "HEAVY DUTY TROLLEYS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/lt.jpg",
                                          text: "LINE TROLLEYS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/t.jpeg",
                                          text: "TROLLEY"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/sr.jpg",
                                          text: "STORAGE RACK"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/sc.jpg",
                                          text: "STORAGE CABINETS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/fpt.jpg",
                                          text: "FOOD PROCESSING TABLES"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/wp.jpg",
                                          text:
                                              "WATER PURIFIER AND HAND WASH UNITS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/dt.jpg",
                                          text: "DINING TABLES"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/MISCEL.jpg",
                                          text: "MISCELLANEOUS"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            tabController.isArchiActive.value =
                                !tabController.isArchiActive.value;
                          },
                          child: Row(
                            children: [
                              Text(
                                "Architecture",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isArchiActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                tabController.isArchiActive.value ? 26 : 16),
                        tabController.isArchiActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 16,
                                    children: [
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/sskl.png",
                                          text:
                                              "STAINLESS STEEL KITCHEN / LABS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/dp.jpeg",
                                          text: "DECORATIVE PANELS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/wf.jpg",
                                          text: "WALL FRAMES"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/aol.jpeg",
                                          text: "AESTHETICS & OUTDOOR LAMPS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/wm.png",
                                          text: "WALL MOUNT"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/cs.jpeg",
                                          text: "CLADINGS & SKIRTINGS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/mscr.jpeg",
                                          text:
                                              "METALLIC STAIR CASE & RAILINGS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/rcop.jpeg",
                                          text:
                                              "ROOFS, CANOPIES & OUTDOOR PATIOS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/chairs.jpeg",
                                          text: "CHAIRS"),
                                      ProductsCard(
                                          isMobile: true,
                                          imagePath:
                                              "assets/images/products_single/Architecture/tables.jpeg",
                                          text: "TABLES"),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "General Products",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  const Column(
                    children: [
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/products_single/general/ec.jpg",
                              text: "Electrical / Electronic Cabinets"),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/products_single/general/ups.jpg",
                              text: "UPS Enclosures"),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/products_single/general/ma.jpeg",
                              text: "Mechanical Assemblies"),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/products_single/general/sscp.jpeg",
                              text: "SS Cabinets/ Products"),
                          ProductsCard(
                              isMobile: true,
                              imagePath:
                                  "assets/images/products_single/general/aa.jpeg",
                              text: "Aluminium Assemblies"),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  )
                ],
              ),
            ),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
