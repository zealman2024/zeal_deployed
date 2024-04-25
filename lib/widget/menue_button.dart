import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenueButton extends StatelessWidget {
  const MenueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: SvgPicture.asset(
            "assets/images/menu.svg",
            height: 20,
          ),
        );
      },
    );
  }
}
