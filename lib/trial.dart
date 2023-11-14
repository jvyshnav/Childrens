import 'package:flutter/material.dart';

class Whey extends StatefulWidget {
  const Whey({super.key});

  @override
  State<Whey> createState() => _WheyState();
}

class _WheyState extends State<Whey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black45,
        title: Text('Whatsapp',style: TextStyle(fontFamily: "Roboto")),
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search_outlined),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
