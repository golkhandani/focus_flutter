import 'package:app/components/authentication/bloc/authentication_bloc.dart';
import 'package:app/locator.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthenticationPage extends StatefulWidget {
  static const routeName = 'authentication';
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final AuthenticationBloc _bloc = locator.get<AuthenticationBloc>();
  @override
  void initState() {
    _bloc.add(const AuthenticationEvent.checkIsLogin());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: LoadingIndicator()),
    );
  }
}
