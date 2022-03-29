import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
    required this.showIcon,
    required this.showTitle,
    required this.title,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String title;
  final bool showIcon, showTitle;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 40 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: Row(
              children: [
                if (showTitle == true)
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                const Spacer(),
                if (showIcon == true)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      onPressed: press,
                      icon: const Icon(Icons.person,
                          size: 50.0, color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50, //模糊半径
                    offset: const Offset(0, 10),
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 30.0,
                    color: kPrimaryColor.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
