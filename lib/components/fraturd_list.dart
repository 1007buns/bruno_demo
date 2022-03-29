import 'package:flutter/material.dart';

import '../constants.dart';

class Featurd extends StatelessWidget {
  const Featurd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // HeaderWithSearchBox(size: size),
          FeaturdCard(
            press: () {},
            image: 'assets/images/bottom-01.jpeg',
          ),
          FeaturdCard(
            press: () {},
            image: 'assets/images/bottom-2.jpeg',
          ),
          FeaturdCard(
            press: () {},
            image: 'assets/images/bottom-3.jpeg',
          ),
        ],
      ),
    );
  }
}

class FeaturdCard extends StatelessWidget {
  const FeaturdCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // 获取设备默认尺寸
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: kDefaultPadding,
                bottom: kDefaultPadding * 3,
              ),
              width: size.width * 0.8,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Positioned(
                left: kDefaultPadding / 2,
                bottom: kDefaultPadding * 3 + 10,
                right: 0,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "News nv\n",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "You will be best",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
