import 'package:anime/core/utils/fonts/style_manager.dart';
import 'package:anime/features/home/presentation/ui/widgets/custom_bottom_bar.dart';
import 'package:anime/features/home/presentation/ui/widgets/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/image_manager.dart';
import 'widgets/characters_list.dart';
import 'widgets/filter_chips.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              top: -30.h,
              right: -100.w,
              child: Image.asset(
                ImageManager.star,
                width: 400.w,
                height: 400.w,
              ),
            ),

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Where Anime Comes Alive',
                          style: StyleManager.dark24Bold,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      FilterChips(),

                      SizedBox(height: 10.h),

                      MovieList(),

                      SizedBox(height: 20.h),

                      Text('Top Characters', style: StyleManager.black24Bold),

                      SizedBox(height: 20.h),

                      CharactersList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 0, onTap: (int p1) {}),
    );
  }
}
