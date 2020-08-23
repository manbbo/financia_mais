import 'package:flutter/material.dart';

class CustomScreenHandler extends StatefulWidget {
  List<Widget> telas;

  int index = 1;

  CustomScreenHandler({this.telas, Key key}) : super (key: key);

  @override
  _CustomScreenHandlerState createState() => _CustomScreenHandlerState();
}

class _CustomScreenHandlerState extends State<CustomScreenHandler> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 254, 248, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.widget.index,
        backgroundColor: Color.fromRGBO(55,	239,	223, 1),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon((Icons.monetization_on)), title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Dashboard")),
        ],
        onTap: (int i) {setState(() {
          this.widget.index = i;
        });},
      ),//CustomBottomNav(),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: Text("FINANCIA+", style: TextStyle(fontSize: 40, color: Color.fromRGBO(55,	239,	223, 1)),),
          ),
          Container(
            child: this.widget.telas[this.widget.index],
          )
          //Text(customBottomNav.index.toString())
        ],
      ),
    );
  }

  List<Widget> setIconButton(List<Icon> icon) {
    List<IconButton> iconbuttons = new List<IconButton>();

    for (int i=0; i<icon.length; i++)
      iconbuttons.add(new IconButton(padding: EdgeInsets.only(left: 20, right: 20), icon: icon[i], iconSize: 30, onPressed: () {
        setState(() {
          this.widget.index = i;
        });
      }));
    return iconbuttons;
  }

  Widget CustomBottomNav() {
    return Container(
      height: MediaQuery.of(context).size.height/12,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration (
          color: Colors.blue
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //children: setIconButton(this.widget.icons),
      ),
    );
  }
}
