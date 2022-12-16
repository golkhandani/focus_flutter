import 'package:app/components/category/category_list/page.dart';
import 'package:app/components/counter/bloc/counter_bloc.dart';
import 'package:app/components/counter/bloc/counter_state.dart';
import 'package:app/components/counter/bloc/counter_event.dart';
import 'package:app/components/login/page.dart';

import 'package:app/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(title: 'Flutter'),
        LoginPage.routeName: (context) => const LoginPage(),
        CategoryListPage.routeName: (context) => const CategoryListPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const routeName = "HomePage";
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final bloc = locator.get<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              bloc: bloc,
              buildWhen: (p, c) => p.isLoading != c.isLoading,
              builder: (context, state) {
                if (state.isLoading == true) {
                  return const LoadingIndicator();
                } else {
                  return Text(
                    state.count.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => bloc.add(const CounterEvent.increase()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => bloc.add(const CounterEvent.decrease()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      semanticsLabel: 'Circular progress indicator',
    );
  }
}
