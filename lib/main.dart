import 'package:financia_mais/layouts/navigator_handler.dart';
import 'package:financia_mais/layouts/screens/invest_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financia Mais',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomScreenHandler(telas: [InvestScreen(), InvestScreen(), InvestScreen()],),
      debugShowCheckedModeBanner: false,
    );
  }
}