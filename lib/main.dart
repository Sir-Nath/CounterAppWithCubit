import 'package:counter_app_cubit/bloc/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/views/screens/first_screen.dart';
import 'package:counter_app_cubit/views/screens/home_screen.dart';
import 'package:counter_app_cubit/views/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  void dispose() {
   _counterCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) =>
            BlocProvider.value(
              value: _counterCubit,
              child: const HomeScreen(
                title: 'Home Screen',
                color: Colors.blue,
              ),
            ),
        '/first': (context) =>
            BlocProvider.value(
              value: _counterCubit,
              child: const FirstScreen(
                title: 'First Screen',
                color: Colors.red,
              ),
            ),
        '/second': (context) =>
            BlocProvider.value(
              value: _counterCubit,
              child: const SecondScreen(
                title: 'Second Screen',
                color: Colors.green,
              ),
            ),
      },
    );
  }
}
