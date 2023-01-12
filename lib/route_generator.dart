import 'package:flutter/material.dart';
import 'main.dart';

class RG{
  static Route<dynamic> generateR(RouteSettings settings){
    final arg= settings.arguments;
    switch(settings.name){
      case "/one":
        if(arg is int){
        return MaterialPageRoute(builder: (_) => ScorePage(score: arg));}
        return MaterialPageRoute(builder: (_){
          return Scaffold(
              appBar: AppBar(
                title: Text("Error Page"),
              ),
              body: Center
                (child: Text("ERROR"),
              )
          );
        });
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            appBar: AppBar(
              title: Text("Error Page"),
            ),
            body: Center
              (child: Text("ERROR"),
            )
          );
        });
    }
  }
}
