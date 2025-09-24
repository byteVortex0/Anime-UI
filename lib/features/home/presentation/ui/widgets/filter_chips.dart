import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/fonts/style_manager.dart';

class FilterChips extends StatefulWidget {
  const FilterChips({super.key});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  final List<String> filters = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];

  String selected = "All";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = filters[index];
          return FilterChip(
            label: Text(item, overflow: TextOverflow.visible),
            labelPadding: EdgeInsets.symmetric(horizontal: 15.w),
            labelStyle: selected == item
                ? StyleManager.white14Bold
                : StyleManager.brand14Bold,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
              side: BorderSide(color: Colors.transparent),
            ),
            selectedColor: ColorManager.brandColor,
            showCheckmark: false,
            selected: selected == item,
            onSelected: (value) {
              setState(() {
                selected = item;
              });
            },
          );
        },
        separatorBuilder: (_, __) => SizedBox(width: 8.w),
        itemCount: filters.length,
      ),
    );
  }
}
