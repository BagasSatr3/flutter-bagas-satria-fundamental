import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Calculator';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Result : $result',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, height: 2)),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Add"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Subtract"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Multipy"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Divide"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) ~/
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
