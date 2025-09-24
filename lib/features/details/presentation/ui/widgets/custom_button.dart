import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/fonts/style_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final Color color;
  final String icon;
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(title, style: StyleManager.white14Bold),
        icon: Image.asset(icon),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 10.w),
        ),
      ),
    );
  }
}
