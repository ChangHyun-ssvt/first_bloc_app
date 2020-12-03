import 'package:first_bloc_app/bloc/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: Icon(Icons.add)),
          RaisedButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: Icon(Icons.remove)),
          RaisedButton(
              onPressed: () => context.read<CounterCubit>().reset(),
              child: Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
