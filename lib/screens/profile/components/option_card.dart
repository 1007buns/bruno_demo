import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, icon;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: press,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.09),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.5)),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icons/you01.svg",
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
