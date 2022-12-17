import 'package:app/components/category/category_list/page.dart';
import 'package:app/components/login/page.dart';
import 'package:app/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  static String isLoggedInKey = 'isLoggedInKey';
  final GlobalNavigator _navigator = locator.get();
  final GlobalSharePreference _preference = locator.get();
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) {
      event.when<Future<void>>(checkIsLogin: _checkIsLogin);
    });
  }

  Future<void> _checkIsLogin() async {
    final bool isloggedIn = await _preference.getValue(isLoggedInKey) ?? false;
    print(isloggedIn);
    if (!isloggedIn) {
      await Future.delayed(const Duration(milliseconds: 2000));
      _navigator.pushNamed(LoginPage.routeName);
      return;
    }

    await Future.delayed(const Duration(milliseconds: 4000));
    _navigator.pushNamed(CategoryListPage.routeName);
    // get update user info again
    // set required data
    // send them to dashboard page
  }
}
