import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/fonts/style_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class CircleName extends StatelessWidget {
  const CircleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),

        Positioned(
          right: -7.w,
          top: 0.h,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(10 / 360),
            child: Image.asset(ImageManager.ellipse, width: 140.w),
          ),
        ),

        SizedBox(
          width: 150.w,
          child: Text(
            "DEMON SLAYER",
            style: StyleManager.black40Regular,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
