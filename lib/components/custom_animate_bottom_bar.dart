import 'package:flutter/material.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  const CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.iconSize = 24,
    this.backgroundColor,
    this.showElevation = true,
    this.animationDuration = const Duration(milliseconds: 200), //200毫秒
    required this.items,
    required this.onItemSelected,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.containerHeight = 48,
    this.curve = Curves.easeInOut, //动画效果
    this.itemCornerRadius = 28,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex; // 选中索引
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration; // 动画时长
  final List<MyBottomNavigationBarItem> items; // 底部导航栏项目
  final ValueChanged<int> onItemSelected; // 项目选中索引
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;
  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            )
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
                // child: _ItemWidget(),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget({
    Key? key,
    required this.iconSize,
    required this.isSelected,
    required this.item,
    required this.backgroundColor,
    required this.itemCornerRadius,
    required this.animationDuration,
    required this.curve,
  }) : super(key: key);

  final double iconSize;
  final bool isSelected;
  final MyBottomNavigationBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 100 : 50,
        height: double.maxFinite,
        curve: curve,
        duration: animationDuration, // 动画时长
        decoration: BoxDecoration(
          color:
              isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
          borderRadius: BorderRadius.circular(itemCornerRadius),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 100 : 50,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconTheme(
                  data: IconThemeData(
                      size: iconSize,
                      color: isSelected
                          ? item.activeColor.withOpacity(1)
                          : item.inactiveColor ?? item.activeColor),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: DefaultTextStyle.merge(
                        child: item.title,
                        style: TextStyle(
                          color: item.activeColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        textAlign: item.textAlign,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 底部导航栏项目
class MyBottomNavigationBarItem {
  MyBottomNavigationBarItem(
    this.icon,
    this.title,
    this.activeColor,
    this.inactiveColor,
    this.textAlign,
  );
  final Widget icon; //
  final Widget title;
  final Color activeColor; // 活动颜色
  final Color? inactiveColor; // 未活动颜色
  final TextAlign? textAlign;
}
