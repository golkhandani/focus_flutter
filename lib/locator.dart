import 'package:app/components/authentication/bloc/authentication_bloc.dart';
import 'package:app/components/counter/bloc/counter_bloc.dart';
import 'package:app/components/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalSharePreference {
  final Future<SharedPreferences> _futureSharedPreferences =
      SharedPreferences.getInstance();

  Future<T?> getValue<T>(String key) async {
    final store = await _futureSharedPreferences;
    return store.get(key) as T?;
  }

  Future<bool> clear() async {
    final store = await _futureSharedPreferences;
    return store.clear();
  }

  Future<bool> remove(String key) async {
    final store = await _futureSharedPreferences;
    return store.remove(key);
  }

  Future<T> setValue<T>(String key, T value) async {
    final store = await _futureSharedPreferences;
    switch (T) {
      case bool:
        store.setBool(key, value as bool);
        break;
      case String:
        store.setString(key, value as String);
        break;
      case double:
        store.setDouble(key, value as double);
        break;
      case int:
        store.setInt(key, value as int);
        break;
      default:
        throw Exception('No valid type for preferences');
    }
    return value;
  }
}

class GlobalNavigator {
  final GlobalKey<NavigatorState> navigatorKey;
  GlobalNavigator({
    required this.navigatorKey,
  });
  pushNamed(String name) => navigatorKey.currentState!.pushNamed(name);
}

final locator = GetIt.instance;

Future setupLocator({required GlobalNavigator globalNavigator}) async {
  locator.registerSingleton<GlobalNavigator>(globalNavigator);
  locator.registerLazySingleton(() => GlobalSharePreference());
  locator.registerFactory(() => AuthenticationBloc());
  locator.registerFactory(() => CounterBloc());
  locator.registerFactory(() => LoginBloc());

  return true;
}
