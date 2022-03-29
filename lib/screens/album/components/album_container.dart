import 'package:bruno_demo/screens/album/components/album.dart';
import 'package:flutter/material.dart';

import 'album.dart';
import 'album_card.dart';

List<Album> album = [
  Album(
    poster: "assets/images/poster_dune.jpg",
    name: "Jay",
    date: "2000-11-07",
    price: "7",
    intro:
        "《Jay》是周杰伦的首张音乐专辑，由周杰伦制作、作曲，方文山、徐若瑄等人作词，收录了10首歌曲，2000年11月7日发行于2001年，该专辑获得第12届台湾金曲奖最佳流行音乐演唱专辑奖、IFPI香港唱片销量大奖十大销量国语唱片等奖项",
  ),
  Album(
    poster: "assets/images/poster_nuhuo.webp",
    name: "大千世界",
    date: "2018-06-01",
    price: "7",
    intro:
        "《大千世界》是内地音乐人许嵩2018年第七张音乐专辑《寻宝游戏》中的主打曲，2018年6月1日于网易云音乐首发，2018年6月8日于QQ音乐、酷狗音乐和酷我音乐发行。",
  ),
  Album(
    poster: "assets/images/poster_speed9.jpeg",
    name: "好好地",
    date: "2015-10-13",
    price: "5",
    intro: "《好好地》是朴树演唱的一首单曲，收录于朴树2017年发行的专辑《猎户星座》中。",
  ),
];

class AlbumContainer extends StatefulWidget {
  const AlbumContainer({Key? key}) : super(key: key);

  @override
  _AlbumContainerState createState() => _AlbumContainerState();
}

class _AlbumContainerState extends State<AlbumContainer> {
  PageController? pageController;
  double pageOffset = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.84);
    pageController!.addListener(() {
      setState(() => pageOffset = pageController!.page!);
    });
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: List.generate(album.length, (index) {
          return AlbumCard(
            offset: pageOffset - index,
            album: album[index],
          );
        }),
      ),
    );
  }
}
