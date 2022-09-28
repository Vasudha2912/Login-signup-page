import 'package:flutter/material.dart';
import '/main.dart';
import '/login.dart';

void main() => runApp(const MyReset());

class MyReset extends StatelessWidget {
  const MyReset({Key? key}) : super(key: key);

  static const String _title = 'Reset';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyResetPass(),
      ),
    );
  }
}

class MyResetPass extends StatefulWidget {
  const MyResetPass({Key? key}) : super(key: key);
  State<MyResetPass> createState() => _MyResetPassState();
}

class _MyResetPassState extends State<MyResetPass> {
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  top: 30, bottom: 50, left: 20, right: 20),
              child: Text(
                'You have successfully changed your Password.',
                style: TextStyle(color: Colors.black, fontSize: 70),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
                child: Text(
                  'Sign In ',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(),
              ),
            ],
          )
        ]));
  }
}
