import 'dart:math' as math;

import 'package:bruno_demo/constants.dart';
import 'package:bruno_demo/screens/album/components/album.dart';
import 'package:flutter/material.dart';

import 'album.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({Key? key, required this.offset, required this.album})
      : super(key: key);

  final double offset; // 动画过程偏移量

  final Album album; // 专辑模型

  @override
  Widget build(BuildContext context) {
    // 计算拖拽过程中的偏移量
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: const EdgeInsets.only(left: 0, right: 8, bottom: 20),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(32),
              ),
              child: Image.asset(
                album.poster,
                height: size.height * 0.3,
                alignment: Alignment(-offset.abs(), 0),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      album.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "发布日期：${album.date}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      album.intro,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        RaisedButton(
                          color: Colors.black,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          onPressed: () {},
                          child: const Text("立即购买"),
                        ),
                        const Spacer(),
                        Text(
                          "￥${album.price}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: kPrimaryColor),
                        ),
                        const SizedBox(width: 16)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
