import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:syrys/Screens/login/login.dart';

class profile extends StatelessWidget {
  String Pname = 'property name';
  String ID = "ID";
  String date = "dat";
  String name = 'Full Name';
  String email = 'info@gmail.com';
  String phoneNum = '+933 3333 3333';
  String Arent = '💲500';
  String MINrent = '💲200';
  String MAXrent = '💲800';
  String lisCount = 'count';
  String tenents = 'count';
  String totalRent = 'count';
  String UpdName = "bla";
  String UpdCount = "blabla";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Container(
        padding: EdgeInsets.only(bottom: 25.0),
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcTzXP8yS66xjGHKpFXxFA5oSAh0AjA8xPRcU7I88COgApoIfvdk0kenagYFoJhN6u-I"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(name,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(email,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(phoneNum,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Average Rent",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(Arent),
                    )
                  ]),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Minimum Rent",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(MINrent),
                    )
                  ]),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Maximum Rent",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(MAXrent),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Listing Count",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(lisCount),
                    )
                  ]),
                ),
                SizedBox(
                  width: 45,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Tenents",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(tenents),
                    )
                  ]),
                ),
                SizedBox(
                  width: 65,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Total Rent",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(totalRent),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Update count",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(UpdCount),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 145,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Property Name",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Property ID",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Created date",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Update Name",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(UpdName),
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
//'Login | Giriş'
