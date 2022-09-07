
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 
  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny_outlined;

IconData _iconDark = Icons.nights_stay_outlined;

  ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.indigo,
  brightness: Brightness.light,
);

ThemeData _DarkTheme = ThemeData(
  primarySwatch: Colors.cyan,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _DarkTheme : _lightTheme,
      home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("DARK AND LIGHT THEME",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),)),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              _iconBool = !_iconBool;
            });
          }, icon: Icon(_iconBool ? _iconDark : _iconLight),
          )
        ],
      ),
      body:
  Center(
        child: ElevatedButton(
          onPressed: (){},
           child: Text("WELCOME")),
      ),
    )
    );
  }
}
