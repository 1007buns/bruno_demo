import 'package:bruno_demo/components/header_with_searchbox.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MySliverBar extends StatelessWidget {
  const MySliverBar({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180.0,
      // pinned: false,
      snap: true,
      floating: true,
      elevation: 0.0,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: HeaderWithSearchBox(
          size: size,
          showTitle: true,
          title: '',
          showIcon: false,
          press: () {},
        ),
        centerTitle: true,
        collapseMode: CollapseMode.pin,
        title: Text(
          title,
          style: TextStyle(fontSize: 15.0, color: kPrimaryColor),
        ),
      ),
    );
  }
}
