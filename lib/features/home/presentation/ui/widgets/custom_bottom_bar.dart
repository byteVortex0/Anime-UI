import 'package:anime/core/utils/color_manager.dart';
import 'package:anime/core/utils/fonts/style_manager.dart';
import 'package:anime/core/utils/image_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {"icon": ImageManager.home, "label": "Home"},
      {"icon": ImageManager.group, "label": "Groups"},
      {"icon": ImageManager.search, "label": "Search"},
      {"icon": ImageManager.world, "label": "World"},
      {"icon": ImageManager.settings, "label": "Settings"},
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 5.w),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final selected = currentIndex == index;
          return GestureDetector(
            onTap: () => onTap(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.w),
              decoration: selected
                  ? BoxDecoration(
                      color: ColorManager.brandColor,
                      borderRadius: BorderRadius.circular(30.r),
                    )
                  : null,
              child: selected
                  ? Row(
                      children: [
                        Image.asset(
                          items[index]["icon"] as String,
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          items[index]["label"] as String,
                          style: StyleManager.white14Semibold,
                        ),
                      ],
                    )
                  : Image.asset(
                      items[index]["icon"] as String,
                      width: 24.w,
                      height: 24.h,
                    ),
            ),
          );
        }),
      ),
    );
  }
}
