import 'package:anime/core/extensions/context_extension.dart';
import 'package:anime/core/routes/app_routes.dart';
import 'package:anime/core/utils/color_manager.dart';
import 'package:anime/features/details/presentation/ui/widgets/circle_name.dart';
import 'package:anime/features/details/presentation/ui/widgets/details_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/fonts/style_manager.dart';
import '../../../../core/utils/image_manager.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_divider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<Map<String, String>> data = [
    {'icon': ImageManager.view, 'title': '2.3M views'},
    {'icon': ImageManager.clap, 'title': '2K clap'},
    {'icon': ImageManager.seasons, 'title': '4 Seasons'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageManager.bg),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.66,
                child: Image.asset(
                  ImageManager.anime,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),

              Transform.translate(
                offset: Offset(0, -80.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleName(),

                    SizedBox(height: 35.h),

                    DetailsChips(),

                    SizedBox(height: 20.h),
                    CustomDivider(),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        data.length,
                        (index) => Row(
                          children: [
                            Image.asset(data[index]['icon']!, width: 20.w),
                            Text(
                              data[index]['title']!,
                              style: StyleManager.white14Semibold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomDivider(),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(ImageManager.demon, width: 40.w),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                              style: StyleManager.lightestGray14Regular,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(color: ColorManager.darkestColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {},
                title: 'Preview',
                color: ColorManager.whiteGray,
                icon: ImageManager.preview,
              ),
            ),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.upgradePlan);
                },
                title: 'Watch Now',
                color: ColorManager.brandColor,
                icon: ImageManager.watch,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
