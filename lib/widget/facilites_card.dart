import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zeal_new/global/pallet.dart';

class FacilitiesCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String text;
  final bool isMobile;
  const FacilitiesCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.text,
    this.isMobile = false,
  });

  @override
  State<FacilitiesCard> createState() => _FacilitiesCardState();
}

class _FacilitiesCardState extends State<FacilitiesCard> {
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
      child: SizedBox(
        width: widget.isMobile ? size.width * 0.4 : size.width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              height: widget.isMobile
                  ? size.width * 0.4
                  : isHover
                      ? size.width * 0.21
                      : size.width * 0.2,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                color: serviceSectionColor,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: widget.isMobile ? 16 : 20,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.isMobile ? 14 : 16,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
