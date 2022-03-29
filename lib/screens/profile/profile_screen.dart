import 'package:bruno_demo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildProfileBar(),
      body: ProfileBody(
        size: size,
        titleImage: 'assets/images/jay.jpeg',
      ),
    );
  }

  AppBar buildProfileBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: SvgPicture.asset(
            "assets/icons/tishi.svg",
            width: 28.0,
            height: 28.0,
          ),
        ),
      ],
      title: const Text(
        "Profile",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }
}
