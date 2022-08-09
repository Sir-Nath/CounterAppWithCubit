import 'package:counter_app_cubit/bloc/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/views/screens/home_screen.dart';
import 'package:counter_app_cubit/views/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../views/screens/first_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(title: 'Home Screen', color: Colors.blue),
          ),
        );
        break;
      case '/first':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const FirstScreen(title: 'First Screen', color: Colors.red),
          ),
        );
        break;
      case '/second':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child:
                const SecondScreen(title: 'Second Screen', color: Colors.green),
          ),
        );
        break;
      default:
        return null;
    }
  }

  void dispose(){
    _counterCubit.close();
  }

}
