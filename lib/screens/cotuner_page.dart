import 'package:first_bloc_app/screens/counter_buttons.dart';
import 'package:first_bloc_app/screens/counter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [CounterView(), CounterButtons()],
        ),
      ),
    );
  }
}
