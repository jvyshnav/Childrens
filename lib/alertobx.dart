import 'package:flutter/material.dart';

class Alertwork extends StatefulWidget {
  const Alertwork({super.key});

  @override
  State<Alertwork> createState() => _AlertworkState();
}

class _AlertworkState extends State<Alertwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context:context , builder: (Builder){
            return AlertDialog(
              title: Text("Registration successfull"),
              content: Text("your data will be saved"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("ok"))
              ],

            );
          });
        }, child: Text('ok')),
      ),
    );
  }
}
