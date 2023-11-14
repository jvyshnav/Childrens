import 'package:flutter/material.dart';
import 'package:november1/counterapp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  var user = TextEditingController();
  var pass = TextEditingController();

  Future<void> login() async {
    final spref = await SharedPreferences.getInstance();
    // spref.setString('username', user.text);
    // spref.setString("password", pass.text);
    var usernam1 = spref.getString("username");
    var password6 = spref.getString('password');
    if(usernam1==user.text&&password6==pass.text)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyApp();
        },));
      }
    else
      {
        print('does not match');
      }

  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:
        Form(key: formkey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(controller: user,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'empty field';
                  }
                },),

              TextFormField(controller: pass,
                validator: (value) {
                  if (value!.isEmpty)
                    return 'empty field';
                },),

              ElevatedButton(onPressed: () {
                login();


              }, child: Text('Login'))
            ],
          ),
        ),

      );
    }
  }

