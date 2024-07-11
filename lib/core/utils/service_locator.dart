import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/core/api/dio_consumer.dart';
import 'package:route_task/features/home/data/repo/product_repo_impl.dart';

import 'shared_preferences_cash_helper.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<CashHelperSharedPreferences>(
      CashHelperSharedPreferences());

  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));

  getIt.registerSingleton<ProductRepoImpl>(ProductRepoImpl(
    api: getIt.get<DioConsumer>(),
  ));
}
