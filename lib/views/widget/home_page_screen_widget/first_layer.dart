// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters, deprecated_member_use
import 'package:flutter/material.dart';

class FirstLayer extends StatelessWidget {
  const FirstLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.inversePrimary,
              Theme.of(context).colorScheme.onInverseSurface
            ],
          ),
        ),
        //child: Center(child: Text('Kahled')),
      ),
    );
  }
}
