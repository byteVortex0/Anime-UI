import 'package:anime/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CustomRadio({super.key, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? ColorManager.brandColor : Colors.black,
            width: 2,
          ),
          color: isSelected ? ColorManager.brandColor : Colors.transparent,
        ),
        child: isSelected
            ? Icon(Icons.check, color: Colors.black, size: 16)
            : null,
      ),
    );
  }
}
