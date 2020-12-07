import 'package:first_bloc_app/bloc/counter_bloc.dart';
import 'package:first_bloc_app/screens/second_page.dart';
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
              onPressed: () =>
                  context.read<CounterBloc>().add(CounterEvent.increment),
              child: Icon(Icons.add)),
          RaisedButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(CounterEvent.decrement),
              child: Icon(Icons.remove)),
          RaisedButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(CounterEvent.reset),
              child: Icon(Icons.refresh)),
          RaisedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondPage(),
            )),
            child: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
