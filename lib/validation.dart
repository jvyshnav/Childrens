import 'package:flutter/material.dart';

import 'counterapp.dart';

class Leticon extends StatefulWidget {
  const Leticon({super.key});

  @override
  State<Leticon> createState() => _LeticonState();
}

class _LeticonState extends State<Leticon> {
  final formkey = GlobalKey<FormState>();

  var user = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: user,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'empty field';
                }
              },
            ),
            TextFormField(
              controller: pass,
              validator: (value) {
                if (value!.isEmpty)
                  return 'empty field';
              },
            ),
            ElevatedButton(onPressed: () {
              if (formkey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CounterApp();
                }));
              }
            }, child: Text('Submit')),
          ],
        ),
      ),


    );
  }
}
