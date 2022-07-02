import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:syrys/Screens/Home/home.dart';
import 'package:syrys/Screens/login/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Body2 extends StatelessWidget {
  String name = 'Full Name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(backgroundColor: Color(0xFF205375), actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
        ),
      ]),
      body: Container(
          child: Container(
        padding: EdgeInsets.only(bottom: 25.0),
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child:
                  Text("Welcome | Hoşgeldiniz", style: TextStyle(fontSize: 25)),
            ),
            SizedBox(
              height: 20, // <-- SEE HERE
            ),
            Align(alignment: Alignment.center, child: Text(this.name)),
            SizedBox(
              height: 200, // <-- SEE HERE
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 224, 11, 11), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  size: 29.0,
                ),
                label:
                    Text('Rented | Kiralandi', style: TextStyle(fontSize: 19)),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(251, 102, 179, 1), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  size: 29.0,
                ),
                label:
                    Text('Available | Mevcut', style: TextStyle(fontSize: 19)),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(178, 233, 236, 8), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 29.0,
                ),
                label:
                    Text('Log Out | Çıkış Yap', style: TextStyle(fontSize: 19)),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                // <-- TextButton
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 85, 83, 83), // Text Color
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.tips_and_updates,
                  size: 29.0,
                ),
                label: Text('Tips | örnek', style: TextStyle(fontSize: 19)),
              ),
            ),
            SizedBox(
              height: 32, // <-- SEE HERE
            ),
            Text(
                "Disclaimer:This application is for only users assigned by SYRYS management for the purpose of property managemant and maintenance only."),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                text: "Enter | Girmek",
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
          ],
        ),
      )),
    );
  }
}
