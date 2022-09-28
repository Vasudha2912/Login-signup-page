import 'package:flutter/material.dart';
import '/login.dart';
import '/create.dart';
import '/signedup.dart';
import '/password.dart';
import '/reset.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/create',
      routes: {
        '/login': (context) => MyApp(),
        '/create': (context) => MyAccount(),
        '/signedup': (context) => MySignUp(),
        '/password': (context) => MyPassword(),
        '/reset': (context) => MyReset(),
      },
    ));
