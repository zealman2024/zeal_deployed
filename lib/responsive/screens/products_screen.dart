import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/controllers/tab_controller.dart';
import 'package:zeal_new/global/pallet.dart';
import 'package:zeal_new/widget/product_card.dart';
import 'package:zeal_new/widget/web_footer.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final tabController = Get.find<CustomTabController>();
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
                                    fontSize: 24,
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
                        tabController.isDefenceActive.value
                            ? const SizedBox(height: 36)
                            : const SizedBox(height: 16),
                        tabController.isDefenceActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 36,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: [
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/re.jpeg",
                                          text: "RUGGED ENCLOSURES"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/scr.jpeg",
                                          text: "SERVER & CONTROL RACKS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/htpp.jpeg",
                                          text:
                                              "HYDRAULIC TANKS AND POWER PACKS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/mtp.jpeg",
                                          text: "MACHINED AND TURNED PARTS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/ep.jpeg",
                                          text:
                                              "ELECTRIC PANEL (INDOOR/OUTDOOR)"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/ma.jpeg",
                                          text: "MECHANICAL ASSEMBLY"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/defence/psmc.jpeg",
                                          text:
                                              "PRECISION SHEET METAL COMPONENT"),
                                    ],
                                  ),
                                  SizedBox(height: 52),
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
                                    fontSize: 24,
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
                        tabController.isFoodActive.value
                            ? const SizedBox(height: 36)
                            : const SizedBox(height: 16),
                        tabController.isFoodActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 36,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: [
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/hdt.jpg",
                                          text: "HEAVY DUTY TROLLEYS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/lt.jpg",
                                          text: "LINE TROLLEYS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/t.jpeg",
                                          text: "TROLLEY"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/sr.jpg",
                                          text: "STORAGE RACK"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/sc.jpg",
                                          text: "STORAGE CABINETS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/fpt.jpg",
                                          text: "FOOD PROCESSING TABLES"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/wp.jpg",
                                          text:
                                              "WATER PURIFIER AND HAND WASH UNITS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/dt.jpg",
                                          text: "DINING TABLES"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Food Processing Industry/MISCEL.jpg",
                                          text: "MISCELLANEOUS"),
                                    ],
                                  ),
                                  SizedBox(height: 52),
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
                                    fontSize: 24,
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
                        tabController.isArchiActive.value
                            ? const SizedBox(height: 36)
                            : const SizedBox(height: 16),
                        tabController.isArchiActive.value
                            ? const Column(
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 36,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: [
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/sskl.png",
                                          text:
                                              "STAINLESS STEEL KITCHEN / LABS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/dp.jpeg",
                                          text: "DECORATIVE PANELS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/wf.jpg",
                                          text: "WALL FRAMES"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/aol.jpeg",
                                          text: "AESTHETICS & OUTDOOR LAMPS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/wm.png",
                                          text: "WALL MOUNT"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/cs.jpeg",
                                          text: "CLADINGS & SKIRTINGS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/mscr.jpeg",
                                          text:
                                              "METALLIC STAIR CASE & RAILINGS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/rcop.jpeg",
                                          text:
                                              "ROOFS, CANOPIES & OUTDOOR PATIOS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/chairs.jpeg",
                                          text: "CHAIRS"),
                                      ProductsCard(
                                          imagePath:
                                              "assets/images/products_single/Architecture/tables.jpeg",
                                          text: "TABLES"),
                                    ],
                                  ),
                                  SizedBox(height: 52),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 26),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General Products",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Wrap(
                        spacing: 16,
                        runSpacing: 36,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          ProductsCard(
                              imagePath:
                                  "assets/images/products_single/general/ec.jpg",
                              text: "Electrical / Electronic Cabinets"),
                          ProductsCard(
                              imagePath:
                                  "assets/images/products_single/general/ups.jpg",
                              text: "UPS Enclosures"),
                          ProductsCard(
                              imagePath:
                                  "assets/images/products_single/general/ma.jpeg",
                              text: "Mechanical Assemblies"),
                          ProductsCard(
                              imagePath:
                                  "assets/images/products_single/general/sscp.jpeg",
                              text: "SS Cabinets/ Products"),
                          ProductsCard(
                              imagePath:
                                  "assets/images/products_single/general/aa.jpeg",
                              text: "Aluminium Assemblies"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 72),
                ],
              ),
            ),
            WebFooter(),
          ],
        ),
      ),
    );
  }
}
