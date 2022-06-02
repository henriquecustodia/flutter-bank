import 'package:flutter/material.dart';
import 'package:my_app/screens/form/index.dart';
import 'package:my_app/screens/list/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': ((context) => TransferList()),
        '/form': ((context) => TransferForm())
      },
    );
  }
}




