import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Alerting extends StatefulWidget {
  const Alerting({super.key});

  @override
  State<Alerting> createState() => _AlertingState();
}

class _AlertingState extends State<Alerting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: (){
           launchUrl(Uri.parse('tel:9539070428'));
        },

            icon: Icon(Icons.call)),
      ),
    );
  }
}

