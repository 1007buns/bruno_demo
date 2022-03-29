import 'package:bruno_demo/components/fraturd_list.dart';
import 'package:flutter/material.dart';

import 'components/my_sliver_bar.dart';

class Search extends StatelessWidget {
  const Search({Key? key, this.title = "Hi"}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            MySliverBar(size: size, title: title),
          ];
        },
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              Featurd(),
              Featurd(),
            ],
          ),
        ),
      ),
    );
  }
}
