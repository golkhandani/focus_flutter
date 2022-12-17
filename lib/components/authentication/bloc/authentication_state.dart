part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(false) isLoggedIn,
    @Default(false) isLoading,
  }) = $$AuthenticationState;
  factory AuthenticationState.initial() => const AuthenticationState();
}
