import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarBgColor extends StatelessWidget {
  const AppBarBgColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.yellow, Colors.white],
        ),
      ),
    );
  }
}
