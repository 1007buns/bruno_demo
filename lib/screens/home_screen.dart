import 'package:bruno_demo/screens/album/album_screen.dart';
import 'package:bruno_demo/screens/home/components/body.dart';
import 'package:bruno_demo/screens/profile/profile_screen.dart';
import 'package:bruno_demo/screens/search/search.dart';
import 'package:flutter/material.dart';

import '../components/custom_animate_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // 定义索引值
  final _inactiveColor = Colors.grey; // 未选中颜色
  Color backgroundColor = Colors.white;
  // Color backgroundColor = Color(0xff050B18);

  List<String> title = ["首页", "搜索", "排名", "直播"];
  final List<Widget> _pages = [
    const Body(),
    const Search(),
    const AlbumScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 56,
      backgroundColor: backgroundColor,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeInOut,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <MyBottomNavigationBarItem>[
        MyBottomNavigationBarItem(
          // SvgPicture.asset(
          //   "assets/icons/shouye.svg",
          //   width: 24,
          //   height: 24,
          // ),
          const Icon(
            Icons.home,
          ),
          Text(title[0]),
          const Color(0xffF4D144),
          _inactiveColor,
          TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          const Icon(Icons.search),
          Text(title[1]),
          Colors.greenAccent,
          _inactiveColor,
          TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          const Icon(Icons.apps),
          Text(title[2]),
          Colors.pink,
          _inactiveColor,
          TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          const Icon(Icons.video_camera_front),
          Text(title[3]),
          Colors.blue,
          _inactiveColor,
          TextAlign.center,
        ),
      ],
    );
  }
}
