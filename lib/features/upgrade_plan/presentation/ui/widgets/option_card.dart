import 'package:anime/core/utils/fonts/style_manager.dart';
import 'package:anime/features/upgrade_plan/presentation/ui/widgets/custom_radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class OptionCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const OptionCard({super.key, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: isSelected ? ColorManager.darkColor : Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(ImageManager.pay, width: 100.w, height: 100.w),
          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly",
                  style: StyleManager.white16Bold.copyWith(
                    color: isSelected ? Colors.white : ColorManager.darkColor,
                  ),
                ),
                SizedBox(height: 5.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\$5 USD ",
                        style: StyleManager.white14Bold.copyWith(
                          color: isSelected
                              ? Colors.white
                              : ColorManager.darkColor,
                        ),
                      ),
                      TextSpan(
                        text: "/Month",
                        style: StyleManager.lightPurple14Bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Include Family Sharing",
                  style: StyleManager.lightPurple12Bold,
                ),
              ],
            ),
          ),

          CustomRadio(isSelected: isSelected, onTap: onTap),
        ],
      ),
    );
  }
}
