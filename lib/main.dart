import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("MyApp"),
          ),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AspectRatio(
                  aspectRatio: 5 / 3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Hello World...!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          elevation: MaterialStateProperty.all(25),
                        ),
                        child: Text(
                          "Text Button",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                            elevation: MaterialStateProperty.all(25)),
                        onPressed: () {},
                        child: Text("Elevated Button"),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: Image.asset('assets/1.png'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Image.asset('assets/5.png'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.brown, shape: BoxShape.circle),
                      child: Image.asset('assets/7.png'),
                    ),
                    Container(
                      child: Baseline(
                        baseline: 10,
                        baselineType: TextBaseline.alphabetic,
                        child: Container(
                          height: 9,
                          width: 400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
