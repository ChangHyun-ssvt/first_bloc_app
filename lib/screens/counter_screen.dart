import 'package:first_bloc_app/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = new CounterBloc(count: 0);

    return Scaffold(
      appBar: AppBar(title: Text("Counter with RxDart")),
      body: Center(
        child: StreamBuilder(
          stream: _counterBloc.stream,
          builder: (context, snapshot) {
            return Text('${snapshot.data}',
                style: Theme.of(context).textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () => _counterBloc.increment(),
              tooltip: "Increment",
              child: Icon(Icons.add)),
          FloatingActionButton(
              onPressed: () => _counterBloc.decrement(),
              tooltip: "Decrement",
              child: Icon(Icons.remove)),
          FloatingActionButton(
              onPressed: () => _counterBloc.reset(),
              tooltip: "Reset",
              child: Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
