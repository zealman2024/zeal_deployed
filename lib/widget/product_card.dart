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
    final size = MediaQuery.of(context).size;
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
            
            duration: const Duration(microseconds: 600),
            height: widget.isMobile
                ? 150
                : isHover
                    ? 360
                    : 350,
            width: widget.isMobile
                ? 150
                : isHover
                    ? size.width*0.22
                    : 320,
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
            height: widget.isMobile ? 9 : 16,
          ),
          SizedBox(
            width: widget.isMobile ? 155 : 320,
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.isMobile ? 14 : 20,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
