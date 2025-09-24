import 'package:anime/anime_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) => const AnimeApp(),
    ),
  );
}
