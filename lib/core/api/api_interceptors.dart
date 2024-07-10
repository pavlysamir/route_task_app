import 'package:dio/dio.dart';
import 'package:route_task/core/api/end_ponits.dart';
import 'package:route_task/core/utils/service_locator.dart';
import 'package:route_task/core/utils/shared_preferences_cash_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Get the token from SharedPreferences
    String? token =
        getIt.get<CashHelperSharedPreferences>().getData(key: ApiKey.token);

    // If token is not null, add it to the request headers as a Bearer token
    if (token != null) {
      options.headers[ApiKey.authorizationHeader] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}
