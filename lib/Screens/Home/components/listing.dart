import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:syrys/Screens/login/login.dart';

class listing extends StatelessWidget {
  bool rent = false;
  String name = 'Full Name';
  String Address = 'Address';
  String curr = "Currency";
  String duration = "1/1/2006 1/1/2021";
  String Electricity = "Electricity num";
  String Mg = "Management fee";
  String id = "happ1000";
  String room = "8";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new ListView.builder(
      //itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.network(
                    'https://images.prismic.io/villaplus/b94890cc-53d4-4003-880b-e511a1bcacb7_tiareII-1121_5143_villa1_3600.jpg',
                    height: 200),
                SizedBox(
                  height: 20,
                ),
                new Text("Adress: " + Address,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      if (rent == false) ...[
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/GR.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        )
                      ] else ...[
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/RR.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        )
                      ],
                    ],
                  ),
                ),
                //Image.asset("assets/S.png", scale: 3)),
                new Text("Rent Currency : " + curr,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "ID:" + id,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                new Text("Contract Duration : " + duration,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: buildText(context),
                )
              ],
            ),
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10));
      },
    ));
  }

  Widget buildText(BuildContext context) => ExpansionTile(
        title: Text("VIEW"),
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(" Name : " + name,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(" Room : " + room,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(" Electricity : " + Electricity,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(" Mgmt Fee : " + Mg,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
          SizedBox(
            height: 20,
          ),
        ],
      );
}
