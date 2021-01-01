import 'package:flutter/material.dart';
import 'service/fetchPharmacy.dart' as service;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melikhan Hosdogdu',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<dynamic>>(
            future: service.fetchPharmacy(),
            builder: (context, snapshot) {
              return Text(snapshot.data[0]["eczane_adi"].toString());
            }),
      ),
    );
  }
}
