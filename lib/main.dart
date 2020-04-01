import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';

import 'package:components/src/routes/routes.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      // home: HomePage(),
      initialRoute: '/',
      routes: getAppRoutes(),

      onGenerateRoute: ( RouteSettings settings ) {
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage(),
        );
      }
    );
  }
}
