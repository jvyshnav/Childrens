import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'counterapp.dart';

class Shareded extends StatefulWidget {
  const Shareded({super.key});

  @override
  State<Shareded> createState() => _LeticonState();
}

class _LeticonState extends State<Shareded> {
  final formkey = GlobalKey<FormState>();

  var user = TextEditingController();
  var pass = TextEditingController();

  Future<void> reg() async {
    final spref = await SharedPreferences.getInstance();
    spref.setString('username', user.text);
    spref.setString("password", pass.text);
    var username = spref.getString("'name");
    print(username);
    var password = spref.getString('password');
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                if (value!.isEmpty) return 'empty field';
              },
            ),
            ElevatedButton(
                onPressed: () {
                  reg();

                  Navigator.of(context).pop();
                },
                child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
