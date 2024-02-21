import 'package:flutter/material.dart';

void main() {
  runApp(PointerCount());
}

// ignore: must_be_immutable
class PointerCount extends StatefulWidget {
  @override
  State<PointerCount> createState() => _PointerCountState();
}

class _PointerCountState extends State<PointerCount> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PointerCount'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        'TeamA',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(fontSize: 100, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child: Text('Add 1 Point',
                              style: TextStyle(color: Colors.black))),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints+=2;
                            });
                          },
                          child: Text('Add 2 Point',
                              style: TextStyle(color: Colors.black))),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints+=3;
                            });
                          },
                          child: Text('Add 3 Point',
                              style: TextStyle(color: Colors.black))),
                      SizedBox(
                        width: 20,
                      ),
                      VerticalDivider(
                        color: Colors.blue,
                        thickness: 2,
                      )
                    ],
                  ),
                ),
                SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    )),
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        'TeamB',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(fontSize: 100, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: Text('Add 1 Point',
                              style: TextStyle(color: Colors.black))),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints+=2;
                            });
                          },
                          child: Text('Add 2 Point',
                              style: TextStyle(color: Colors.black))),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 14),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints+=3;
                            });
                          },
                          child: Text('Add 3 Point',
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                ),
                onPressed: () {
                  setState(() {
                    teamBPoints=0;
                    teamAPoints=0;
                  });
                },
                child: Text('Reset',
                    style: TextStyle(
                      color: Colors.black,
                    ))),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
