import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/fanhui.svg")),
                  ),
                  Spacer(),
                  const IconCard(icon: 'assets/icons/guanyu.svg'),
                  const IconCard(icon: 'assets/icons/guanyu.svg'),
                  const IconCard(icon: 'assets/icons/guanyu.svg'),
                  const IconCard(icon: 'assets/icons/guanyu.svg'),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/jay.jpeg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
