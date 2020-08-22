import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  List<Icon> icons = [Icon(Icons.monetization_on),
                    Icon(Icons.home),
                    Icon(Icons.person)];

  int index = 0;

  int getIndex() {
    return this.index;
  }

  CustomBottomNav ({this.index, Key key}) : super(key:key);

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  List<Widget> setIconButton(List<Icon> icon) {
    List<IconButton> iconbuttons = new List<IconButton>();

    for (int i=0; i<icon.length; i++)
    iconbuttons.add(new IconButton(padding: EdgeInsets.only(left: 20, right: 20), icon: icon[i], iconSize: 30, onPressed: () {
      setState(() {
        setIndex(i);
      });
    }));
    return iconbuttons;
  }

  Function setIndex(int index) {
    setState(() {
      this.widget.index = index;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/12,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration (
        color: Colors.blue
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: setIconButton(this.widget.icons),
      ),
    );
  }
}