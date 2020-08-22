import 'package:financia_mais/layouts/bottom_navigator.dart';
import 'package:flutter/material.dart';

class CustomScreenHandler extends StatefulWidget {
  List<Widget> telas;

  CustomScreenHandler({this.telas, Key key}) : super (key: key);

  @override
  _CustomScreenHandlerState createState() => _CustomScreenHandlerState();
}

class _CustomScreenHandlerState extends State<CustomScreenHandler> {
  CustomBottomNav customBottomNav = CustomBottomNav(index: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNav,
      body: Stack(
        children: [
          this.widget.telas[customBottomNav.getIndex()]
        ],
      ),
    );
  }
}