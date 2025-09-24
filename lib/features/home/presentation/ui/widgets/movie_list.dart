import 'package:anime/core/extensions/context_extension.dart';
import 'package:anime/core/routes/app_routes.dart';
import 'package:anime/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/fonts/style_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            context.pushNamed(AppRoutes.details);
          },
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(ImageManager.listItem),
                    ),

                    Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r),
                        ),

                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorManager.brandColor,
                              size: 15.sp,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              '5.0',
                              style: StyleManager.lightBlack12Semibold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text('Detective Conan', style: StyleManager.dark14Bold),
              SizedBox(height: 3.h),
              Text('Mystery', style: StyleManager.grey12Medium),
            ],
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: 10,
      ),
    );
  }
}
