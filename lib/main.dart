import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _textColor = Colors.white;
  Color _containerColor = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(child: Text("CA211")),
        ),


        body: Column(

          children: [
            Container(
              color: _containerColor,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Hello CA211",
                style: TextStyle(
                  color: _textColor,
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Change Text",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textColor = Colors.green;
                    });
                  },
                  child: const Text("Green"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textColor = Colors.yellow;
                    });
                  },
                  child: const Text("Yellow"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textColor = Colors.blue;
                    });
                  },
                  child: const Text("Blue"),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/sk.jpg'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _containerColor = Colors.black;

                });
              },
              child: const Text("Change Background"),
            ),
          ],
        ),
      ),
    );
  }
}
