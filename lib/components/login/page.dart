import 'package:app/components/login/bloc/login_bloc.dart';
import 'package:app/components/shared/konstants.dart';
import 'package:app/locator.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/translation_key.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "LoginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc _bloc = locator.get();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: kInputDecoration.copyWith(
                        labelText: LoginText.enterPassword.text,
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: kInputDecoration.copyWith(
                        labelText: LoginText.enterPassword.text,
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      elevation: 1.0,
                      height: 54,
                      minWidth: double.infinity,
                      color: Colors.orangeAccent,
                      hoverColor: Colors.orange,
                      highlightColor: Colors.deepOrangeAccent,
                      child: BlocBuilder<LoginBloc, LoginState>(
                        bloc: _bloc,
                        builder: (context, state) {
                          return state.isLoading
                              ? kLoadingBox
                              : Text(LoginText.loginBtn.text);
                        },
                      ),
                      onPressed: () => _bloc.add(const LoginEvent.started()),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
