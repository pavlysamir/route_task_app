import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Theme/Teme_data.dart';
import 'package:route_task/core/utils/app_router.dart';
import 'package:route_task/core/utils/service_locator.dart';
import 'package:route_task/features/home/data/repo/product_repo_impl.dart';
import 'package:route_task/features/home/presentation/managers/productCubit/product_cubit.dart';

class RouteTaskApp extends StatelessWidget {
  const RouteTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(getIt.get<ProductRepoImpl>())..getAllProduct(),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme:
                //isDark ? AppTheme.darkTheme :
                AppTheme.lightTheme),
      ),
    );
  }
}
