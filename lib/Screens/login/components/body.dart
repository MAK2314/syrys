import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:syrys/Screens/welcome/welcome.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new Container(
        height: 42.0,
        color: Color(0xFF205375),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              " ©2021 QSYRYS ALL RIGHTS RESERVED",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
          child: Container(
        padding: EdgeInsets.only(bottom: 25.0),
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Image.asset("assets/S.png", scale: 3)),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email | E-posta",
              ),
            ),
            SizedBox(
              height: 20, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter email...',
                ),
              ),
            ),
            SizedBox(
              height: 20, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password | Şifre",
              ),
            ),
            SizedBox(
              height: 20, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password...',
                ),
              ),
            ),
            SizedBox(
              height: 35, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                text: "Login | Giriş",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color(0xFF205375), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  size: 24.0,
                ),
                label: Text('+90 533 883 55  38'),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color(0xFF205375), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  size: 24.0,
                ),
                label: Text('info@qsyrys.com'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
//'Login | Giriş'
