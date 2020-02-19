import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: () => {  })
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 120.0, color: Colors.green),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso em (kg)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura em (cm)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text('Calcular', style: TextStyle(color: Colors.white, fontSize: 25.0)),
                  color: Colors.green,
                ),
              ),
            ),
            Text(
              "INFO",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green[700], fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}