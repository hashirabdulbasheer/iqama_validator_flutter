import 'package:flutter/material.dart';
import 'package:iqama_validator/iqama_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iqama Validator Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String iqamaNumber = "2172323137";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Iqama Validator Example'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text("$iqamaNumber", style: Theme.of(context).textTheme.headline2),
              SizedBox(height: 30),
              Text("isValid: ${IqamaValidator.validate(iqamaNumber)}", style: TextStyle(color: Colors.green, fontSize: 50)),
            ],
          ),
        ));
  }
}
