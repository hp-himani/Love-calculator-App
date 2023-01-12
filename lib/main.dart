import 'dart:math';
import 'package:flutter/material.dart';
import 'calc.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int score = Random().nextInt(40) + 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOVE CALCULATOR',
      home: MyCalculator(),
      // routes: {
      //   "/one" : (_)=> ScorePage(score: score);
      // }, //in this method data passed to the page can't be changed dynamically
      onGenerateRoute: RG.generateR,
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  late String firstName;
  late String secondName;
  late int score;
  void loveScore() {
    //score = Random().nextInt(40) + 40;
    var s;
    if(secondName=="kabadi") s="rgrege";
    else s = calculation(firstName: firstName, secondName: secondName);
    Navigator.of(context)
        .pushNamed("/one",
          arguments: s);
    // Navigator.of(context)
    //     .pushNamed("/one");
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => ScorePage(score: score)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOVE CALCULATOR'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: 'lovegif',
                    child: Image(image: AssetImage('images/logo.gif')),
                  ),
                )),
            TextField(
              onChanged: (value) {
                firstName = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            TextField(
              onChanged: (value) {
                secondName = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter your parterner\'s name',
              ),
            ),
            ElevatedButton(
              onPressed: loveScore,
              child: Text('Calculate'),
            ),
          ]),
    );
  }
}

class ScorePage extends StatelessWidget {
  const ScorePage({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScorePage"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Hero(
                tag: 'lovegif',
                child: Image(image: AssetImage('images/logo.gif')),
              ),
            )),
        Text(
          'Your Score is : $score',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ]),
    );
  }
}

