import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oke_oce_app/ui/home.dart';

import 'Router.dart';
import 'app_module.dart';

final dependency = AppModule(Home());

void main() {
  print("launch app");

  dependency.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dependency.configureBloc(MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xFFffffff),
        primaryColor: Color(0xFF008ECC),
        accentColor: Color(0xFF008ECC),

        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold, fontFamily: "Circular Std"),
          headline2: TextStyle(fontSize: 14),
          button: TextStyle(fontSize: 14,color: Theme.of(context).accentColor)
        )
      ),
      onGenerateRoute: Router.generateRouter,
      initialRoute: Router.loginPage,
    ));
  }
}
