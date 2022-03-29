import 'package:bruno_demo/constants.dart';
import 'package:bruno_demo/screens/album/components/album_container.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding, top: kDefaultPadding * 3),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // 导航栏标题
              Padding(
                padding: EdgeInsets.only(
                    left: kDefaultPadding / 2, bottom: kDefaultPadding * 3),
                child: Text(
                  "精品推荐",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              AlbumContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
