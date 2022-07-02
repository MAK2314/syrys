import 'package:flutter/material.dart';
import 'package:syrys/components/rounded_button.dart';
import 'package:syrys/Screens/Home/components/listing.dart';
import 'package:syrys/Screens/Home/components/payment.dart';
import 'package:syrys/Screens/Home/components/profile.dart';
import 'package:syrys/Screens/login/login.dart';

class Body3 extends StatefulWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  final screens = [
    Center(
      child: listing(),
    ),
    Center(
      child: payment(),
    ),
    Center(
      child: profile(),
    ),
    Center(child: Text("update")),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Listing',
            backgroundColor: Color(0xFF205375),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
            backgroundColor: Color(0xFF205375),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xFF205375),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Update',
            backgroundColor: Color(0xFF205375),
          ),
        ],
//
//.          currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(226, 251, 255, 0),
//          onTap: _onItemTapped,
      ),
      body: screens[currentIndex],
    );
  }
}
