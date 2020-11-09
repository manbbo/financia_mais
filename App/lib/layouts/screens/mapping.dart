import 'dart:async';

import 'package:financia_mais/layouts/screens/invest_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapping extends StatefulWidget {
  final double lat, lon;

  Mapping ({Key key, this.lat, this.lon}) : super(key: key);
  @override
  _MappingState createState() => _MappingState();
}

class _MappingState extends State<Mapping> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = Set.from([]);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          GoogleMap(
            markers: Set.from([Marker(markerId: MarkerId('1'), position: LatLng(this.widget.lat - 0.03, this.widget.lon+0.42),
                onTap: () =>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Scaffold(
                      body: InvestScreen(),
                    );
                }
                ))}),
              Marker(markerId: MarkerId('2'),  position: LatLng(this.widget.lat - 0.4, this.widget.lon-0.03),
                  onTap: () =>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Scaffold(
                      body: InvestScreen(),
                    );
                  }
                  ))}),
              Marker(markerId: MarkerId('3'), position: LatLng(this.widget.lat - 0.02342, this.widget.lon+0.005),
                  onTap: () =>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Scaffold(
                      body: InvestScreen(),
                    );
                  }
                  ))}),
              Marker(markerId: MarkerId('4'),  position: LatLng(this.widget.lat + 0.05, this.widget.lon-0.6),
                  onTap: () =>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Scaffold(
                      body: InvestScreen(),
                    );
                  }
                  ))}),
              Marker(markerId: MarkerId('5'), position: LatLng(this.widget.lat + 0.2, this.widget.lon-0.530),
                  onTap: () =>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Scaffold(
                      body: InvestScreen(),
                    );
                  }
                  ))})
            ]),
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(this.widget.lat, this.widget.lon),//37.42796133580664, -122.085749655962),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          )
        ],
      )
    );
  }
}