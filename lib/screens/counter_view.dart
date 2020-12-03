import 'package:first_bloc_app/bloc/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    print("CounterView");
 //   final counterCubit = context.read()<CounterCubit>();

    return Center(
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) => Text(
          "$state",
          style: textTheme.headline2,
        ),
      ),
    );
  }
}
