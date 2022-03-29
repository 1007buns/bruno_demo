import 'package:bruno_demo/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/朴树.jpeg",
            title: "好好地",
            country: 'China',
            price: 7,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/jay.jpeg",
            title: "Jay",
            country: 'China',
            price: 7,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/许嵩.jpeg",
            title: "大千世界",
            country: 'China',
            price: 7,
            press: () {},
          ),
        ],
        // children: [
        //   RecomendPlantCard(
        //     press: () {},
        //     price: 6,
        //     title: "好好地",
        //     country: 'China',
        //     image: const DecorationImage(
        //       fit: BoxFit.cover,
        //       image: AssetImage(
        //         "assets/images/朴树.jpeg",
        //       ),
        //     ),
        //   ),
        //   RecomendPlantCard(
        //     press: () {},
        //     price: 9,
        //     title: "Jay",
        //     country: 'China',
        //     image: const DecorationImage(
        //       fit: BoxFit.fill,
        //       image: AssetImage(
        //         "assets/images/jay.jpeg",
        //       ),
        //     ),
        //   ),
        //   RecomendPlantCard(
        //     press: () {},
        //     price: 7,
        //     title: "大千世界",
        //     country: 'China',
        //
        //     ),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, country, image;
  final int price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.35,
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              width: size.width * 0.35,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                      TextSpan(
                        text: country,
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "\$ $price",
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
