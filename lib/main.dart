import 'package:counter_app_cubit/bloc/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/constants/routes/routes.dart';
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
  //final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  void dispose() {
   _appRouter.dispose();
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
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
