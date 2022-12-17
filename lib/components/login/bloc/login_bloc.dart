import 'package:app/components/authentication/bloc/authentication_bloc.dart';
import 'package:app/components/category/category_list/page.dart';
import 'package:app/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GlobalNavigator _navigator = locator.get();
  final GlobalSharePreference _preference = locator.get();
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when<Future<void>>(
        started: () => _started(emit),
        login: () async {},
        loading: () async {},
      );
    });
  }

  _started(emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    await _preference.setValue(AuthenticationBloc.isLoggedInKey, true);
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(state.copyWith(isLoading: false));
    _navigator.pushNamed(CategoryListPage.routeName);
  }
}
