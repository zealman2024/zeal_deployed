import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeal_new/global/pallet.dart';

class ProductsCard extends StatefulWidget {
  final bool isMobile;
  final String imagePath;
  final String text;
  const ProductsCard({
    super.key,
    this.isMobile = false,
    required this.imagePath,
    required this.text,
  });

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  bool isHover = false;
  Offset mousePos = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
          mousePos += e.delta;
          mousePos *= 0.12;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(microseconds: 400),
            height: widget.isMobile
                ? isHover
                    ? 165
                    : 150
                : isHover
                    ? 370
                    : 350,
            decoration: BoxDecoration(
              color: serviceSectionColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: widget.isMobile ? 6 : 16,
          ),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.isMobile ? 16 : 20,
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
