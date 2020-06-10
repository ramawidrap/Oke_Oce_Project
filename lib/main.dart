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
    return dependency.configureBloc(MaterialApp(onGenerateRoute: Router.generateRouter,initialRoute: Router.initialPage,));
  }
}
