import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class TitleImage extends StatelessWidget {
  const TitleImage({
    Key? key,
    required this.size,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 200.0,
      child: Center(
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 150,
              child: Center(
                child: Container(
                  width: 120,
                  height: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(image),
                      ),
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.35),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              right: 5,
              bottom: 15,
              child: Container(
                width: 40,
                height: 40,
                child: InkWell(
                  borderRadius: BorderRadius.circular(60),
                  onTap: press,
                  child: Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/icons/shangchuan.svg",
                      width: 25,
                      height: 25,
                      color: kPrimaryColor.withOpacity(0.8),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
