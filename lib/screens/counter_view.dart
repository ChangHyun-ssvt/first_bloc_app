import 'package:first_bloc_app/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) => Text(
          "$state",
          style: textTheme.headline2,
        ),
      ),
    );
  }
}
