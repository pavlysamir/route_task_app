import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Theme/Teme_data.dart';
import 'package:route_task/core/utils/app_router.dart';

class RouteTaskApp extends StatelessWidget {
  const RouteTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme:
              //isDark ? AppTheme.darkTheme :
              AppTheme.lightTheme),
    );
  }
}
