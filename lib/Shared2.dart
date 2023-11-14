import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class Sharedwork extends StatefulWidget {
  const Sharedwork({super.key});

  @override
  State<Sharedwork> createState() => _SharedworkState();
}

class _SharedworkState extends State<Sharedwork> {
  final formkey = GlobalKey<FormState>();
  // var abc, xyz;

  Future<void>login() async {
    final person = await SharedPreferences.getInstance();
    person.setString('username', user.text);
    person.setString('password', pass.text);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Login();
    },));
    var name=person.getString("username");
    print(name);
    var passw=person.getString('password');
    print(passw);
    // setState(() {
    //   var abc = person.getString('username');
    //  var xyz = person.getString('password');
    //  print(abc);
    //  print(xyz);
    //   user.clear();
    //   pass.clear();
    // });

    // print(abc);
    //
    // print(xyz);
  }

  var user = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Form(key: formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: user,
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'empty field';
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: pass,
                validator: (value) {
                  if (value!.isEmpty) return 'empty field';
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                    login();}

                  },
                  child: Text('Submit')),
              // SizedBox(
              //   height: 20,
              // ),
              // ListTile(
              //   title: Text(abc.toString()),
              //   subtitle: Text(xyz.toString()),
              //   tileColor: Colors.grey[300],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
