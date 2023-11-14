import 'package:flutter/material.dart';
import 'package:november1/Shared2.dart';
import 'package:november1/alertobx.dart';
import 'package:november1/login.dart';
import 'package:november1/trial.dart';
import 'package:november1/url launcher.dart';

import 'Shared prefernce.dart';
import 'counterapp.dart';
import 'validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Sharedwork(),
    );
  }
}
