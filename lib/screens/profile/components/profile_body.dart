import 'package:bruno_demo/screens/profile/components/title_image.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'option_card.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
    required this.size,
    required this.titleImage,
  }) : super(key: key);

  final Size size;
  final String titleImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          TitleImage(
            size: size,
            image: titleImage,
            press: () {},
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Column(
            children: [
              OptionCard(
                title: 'My Account',
                icon: 'assets/icons/gouwuche.svg',
                press: () {},
              ),
              OptionCard(
                title: 'Notifications',
                icon: 'assets/icons/wendang.svg',
                press: () {},
              ),
              OptionCard(
                title: 'Settings',
                icon: 'assets/icons/setting.svg',
                press: () {},
              ),
              OptionCard(
                title: 'Help Center',
                icon: 'assets/icons/guanyu.svg',
                press: () {},
              ),
              OptionCard(
                title: 'Log Out',
                icon: 'assets/icons/fenxiang.svg',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
