import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturdPlants extends StatelessWidget {
  const FeaturdPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturdPlantCard(
            press: () {},
            image: 'assets/images/bottom-01.jpeg',
          ),
          FeaturdPlantCard(
            press: () {},
            image: 'assets/images/bottom-2.jpeg',
          ),
          FeaturdPlantCard(
            press: () {},
            image: 'assets/images/bottom-3.jpeg',
          ),
        ],
      ),
    );
  }
}

class FeaturdPlantCard extends StatelessWidget {
  const FeaturdPlantCard({
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
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
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
    );
  }
}
