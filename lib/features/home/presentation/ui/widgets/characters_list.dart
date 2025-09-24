import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/fonts/style_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(ImageManager.naroto),
              ),
            ),
            SizedBox(height: 10.h),
            Text('Naruto Uzumaki', style: StyleManager.dark16Semibold),
            SizedBox(height: 3.h),
            Text('Naruto', style: StyleManager.grey14Semibold),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: 10,
      ),
    );
  }
}
