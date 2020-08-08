import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.lightBlue[300],
      child: Icon(Icons.add),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 300,
            color: Colors.red,
          ),
        );
      },
    );
  }
}
