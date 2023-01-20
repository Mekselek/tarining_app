import 'package:flutter/material.dart';
import 'get_data.dart';
import 'package:http/http.dart';

void main() async {
  runApp(MyApp());
  funkcja();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var workoutCount = workoutNum;
  dynamic num = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Center(
          child: Text(
            'Hi Maks! This is your \n $workoutNum training!',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
              onPressed: () {
                setState(() {
                  workoutNum += 1;
                });
              },
              child: Text('Add your Workout'),
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {
                setState(() {
                  if (workoutNum >= 1) {
                    workoutNum -= 1;
                  } else {
                    workoutNum = 0;
                  }
                });
              },
              child: Text('Delete your workout'),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
          onPressed: () {
            setState(() {
              num += 1;
              
            });
          },
          child: Text('Delete your workout'),
        ),
      ])),
    );
  }
}
