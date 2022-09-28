import 'package:flutter/material.dart';
import '/main.dart';
import '/create.dart';

void main() => runApp(const MySignUp());

class MySignUp extends StatelessWidget {
  const MySignUp({Key? key}) : super(key: key);

  static const String _title = 'Signed Up';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyPage(),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  top: 30, bottom: 50, left: 20, right: 20),
              child: Text(
                'You have successfully created your Account.',
                style: TextStyle(color: Colors.black, fontSize: 70),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyAccount()),
                  );
                },
                child: Text(
                  'Back To Page',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(),
              ),
            ],
          )
        ]));
  }
}
