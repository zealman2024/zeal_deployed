import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                              const Text(
                                "Defence Sector",
                                style: TextStyle(
                                  fontSize: 20,
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
                            ? LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (constraints.maxWidth > 1300) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 6,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 1000) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 950) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 2 / 4,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 850) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth < 600) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  }
                                },
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
                                  fontSize: 20,
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
                            ? LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (constraints.maxWidth > 1300) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 6,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 1000) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 950) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 2 / 4,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth > 850) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else if (constraints.maxWidth < 600) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  } else {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
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
                                    );
                                  }
                                },
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
                                  fontSize: 20,
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
                            ? LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (constraints.maxWidth > 1300) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 6,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  } else if (constraints.maxWidth > 1000) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 6,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  } else if (constraints.maxWidth > 950) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 2 / 4,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  } else if (constraints.maxWidth > 850) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 9,
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  } else if (constraints.maxWidth < 600) {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  } else {
                                    return GridView.count(
                                      padding: const EdgeInsets.only(top: 26),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      childAspectRatio: 3 / 4,
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      crossAxisSpacing: 16,
                                      children: const [
                                        ProductsCard(
                                            imagePath:
                                                "assets/images/products_single/Architecture/sskl.png",
                                            text:
                                                "STAINLESS STEEL KITCHES / LABS"),
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
                                                "METALIC STAIR CASE & RAILINGS"),
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
                                    );
                                  }
                                },
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "General Products",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 16),
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      if (constraints.maxWidth > 1300) {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3 / 9,
                          crossAxisCount: 6,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      } else if (constraints.maxWidth > 1000) {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3 / 9,
                          crossAxisCount: 6,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      } else if (constraints.maxWidth > 950) {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 2 / 4,
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      } else if (constraints.maxWidth > 850) {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3 / 9,
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      } else if (constraints.maxWidth < 600) {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3 / 9,
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      } else {
                        return GridView.count(
                          padding: const EdgeInsets.only(top: 26),
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3 / 9,
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          crossAxisSpacing: 16,
                          children: const [
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
                        );
                      }
                    },
                  ),
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
