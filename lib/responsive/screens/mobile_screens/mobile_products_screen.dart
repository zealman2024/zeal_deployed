import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/responsive/screens/mobile_screens/mobile_menue.dart';
import 'package:zeal_new/widget/mobile_footer.dart';
import 'package:zeal_new/widget/product_card.dart';

class MobileProductsPage extends StatelessWidget {
  MobileProductsPage({super.key});
  final tabController = Get.find<CustomTabController>();

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
                              const Text(
                                "Defence Sector",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isDefenceActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        tabController.isDefenceActive.value
                            ? GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.only(top: 16),
                                childAspectRatio: 1 / 1.2,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 6,
                                children: const [
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
                                      text: "HYDRAULIC TANKS AND POWER PACKS"),
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/defence/mtp.jpeg",
                                      text: "MACHINED AND TURNED PARTS"),
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/defence/ep.jpeg",
                                      text: "ELECTRIC PANEL (INDOOR/OUTDOOR)"),
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/defence/ma.jpeg",
                                      text: "MECHANICAL ASSEMBLY"),
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/defence/psmc.jpeg",
                                      text: "PRECISION SHEET METAL COMPONENT"),
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
                              const Text(
                                "Food Processing Industry",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isFoodActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        tabController.isFoodActive.value
                            ? GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.only(top: 16),
                                childAspectRatio: 1 / 1.2,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 6,
                                children: const [
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
                              const Text(
                                "Architecture",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 6),
                              tabController.isArchiActive.value
                                  ? const Icon(CupertinoIcons.chevron_up)
                                  : const Icon(CupertinoIcons.chevron_down),
                            ],
                          ),
                        ),
                        tabController.isArchiActive.value
                            ? GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.only(top: 16),
                                childAspectRatio: 1 / 1.2,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 6,
                                children: const [
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/Architecture/sskl.png",
                                      text: "STAINLESS STEEL KITCHES / LABS"),
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
                                      text: "METALIC STAIR CASE & RAILINGS"),
                                  ProductsCard(
                                      isMobile: true,
                                      imagePath:
                                          "assets/images/products_single/Architecture/rcop.jpeg",
                                      text: "ROOFS, CANOPIES & OUTDOOR PATIOS"),
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
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "General Products",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GridView.count(
                    padding: const EdgeInsets.only(top: 16),
                    childAspectRatio: 1 / 1.2,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 6,
                    children: const [
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
