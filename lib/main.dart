import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/utils/service_locator.dart';
import 'package:route_task/core/utils/shared_preferences_cash_helper.dart';
import 'package:route_task/core/utils/simple_bloc_observer.dart';
import 'package:route_task/route_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpServiceLocator();
  await getIt.get<CashHelperSharedPreferences>().init();
  Bloc.observer = SimpleBlocObserver();

  runApp(const RouteTaskApp());
}
