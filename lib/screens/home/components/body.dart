import 'package:bruno_demo/constants.dart';
import 'package:bruno_demo/screens/home/components/recomend_plants.dart';
import 'package:bruno_demo/screens/home/components/title_with_more_bbtn.dart';
import 'package:bruno_demo/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/header_with_searchbox.dart';
import 'featurd_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // 获取设备默认尺寸
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(
              showTitle: true,
              size: size,
              showIcon: true,
              title: 'Hi',
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfileScreen();
                    },
                  ),
                );
              },
            ),
            TitleWithMoreBtn(
              title: 'Recommend',
              press: () {},
            ),
            const RecomendPlants(),
            TitleWithMoreBtn(title: "Featurd", press: () {}),
            const FeaturdPlants(),
            SizedBox(height: kDefaultPadding)
          ],
        ),
      ),
    );
  }
}
