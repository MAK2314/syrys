import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:syrys/Screens/login/login.dart';

class payment extends StatelessWidget {
  String name = 'Full Name';
  String Adress = 'Adress';
  String Deposit = 'Deposit Currency';
  String passport = 'passport/id';
  String Mobile = 'phone number';
  String contrDuration = 'contrDuration';
  String PID = 'property ID';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://legaltemplates.net/wp-content/uploads/documents/lease-agreement/standard-residential-rental-lease-agreement.png"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Name : " + name),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Adress : " + Adress),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("    Deposit : " + Deposit),
                    )
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Passport : " + passport),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("ID : " + PID),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Mobile : " + Mobile),
                    ),
                  ],
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
