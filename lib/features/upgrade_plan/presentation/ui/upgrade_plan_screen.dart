import 'package:anime/core/extensions/context_extension.dart';
import 'package:anime/features/upgrade_plan/presentation/ui/widgets/option_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/fonts/style_manager.dart';
import '../../../../core/utils/image_manager.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffDDE2FF), Color(0xffFFFFFF)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -70.h,
              left: -170.w,
              child: Image.asset(
                ImageManager.star2,
                width: 400.w,
                height: 300.w,
              ),
            ),

            Positioned(
              top: 130.h,
              right: -200.w,
              child: Image.asset(
                ImageManager.star1,
                width: 400.w,
                height: 300.w,
              ),
            ),

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 30.h,
                    bottom: 20.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Text('Upgrade Plan', style: StyleManager.dark22Bold),
                          Spacer(),
                          GestureDetector(
                            onTap: () => context.pop(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15.r,
                              child: Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 25.w,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.h),
                      Image.asset(ImageManager.rocketBoy, height: 200.h),
                      SizedBox(height: 16.h),
                      Text(
                        'Seamless Anime Experience, Ad-Free.',
                        style: StyleManager.dark24Bold,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 8.h),
                      Text(
                        'Enjoy unlimited anime streaming without interruptions.',
                        style: StyleManager.neutralGray14Medium,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 20.h),

                      OptionCard(isSelected: true, onTap: () {}),

                      SizedBox(height: 10.h),

                      OptionCard(isSelected: false, onTap: () {}),

                      SizedBox(height: 20.h),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.brandColor,
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Continue',
                            style: StyleManager.white16Bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
