import 'package:first_bloc_app/bloc/counter_cubit.dart';
import 'package:first_bloc_app/screens/counter_buttons.dart';
import 'package:first_bloc_app/screens/counter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("CounterPage");

    return BlocProvider(
        create: (_) => CounterCubit(),
        child: Scaffold(
          appBar: AppBar(title: Text("Counter Widget")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CounterView(), CounterButtons()],
            ),
          ),
        ));
  }
}
