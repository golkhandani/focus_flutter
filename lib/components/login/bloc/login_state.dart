part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) isLoggedIn,
    @Default(false) isLoading,
  }) = $$LoginState;

  factory LoginState.initial() => const LoginState();
}
