import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/fonts/style_manager.dart';

class DetailsChips extends StatefulWidget {
  const DetailsChips({super.key});

  @override
  State<DetailsChips> createState() => _DetailsChipsState();
}

class _DetailsChipsState extends State<DetailsChips> {
  final List<String> filters = ["Dark Fantasy", "Action", "Adventure"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        filters.length,
        (index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          margin: EdgeInsets.only(right: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: ColorManager.lightGray.withValues(alpha: 0.24),
          ),
          child: Text(filters[index], style: StyleManager.white11Medium),
        ),
      ),
    );
  }
}
