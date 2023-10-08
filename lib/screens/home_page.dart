

import 'package:acm_app/screens/contact/contact_us_page.dart';
import 'package:acm_app/screens/home/replace_page1.dart';
import 'package:acm_app/screens/events/replace_page2.dart';
import 'package:acm_app/screens/committee/replace_page3.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  List pages = [
    const ReplacePage1(), // Home Page CLASS NAME here
    const ReplacePage2(), // Event Page CLASS NAME here
    const ReplacePage3(), // Committee Page CLASS NAME here
    const ContactUsPage(), // Contact Us Page
  ];

  void onTap(int index) {
      setState(() {
        currentIndex = index;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.black,
        onTap: onTap,
        selectedItemColor: Colors.cyanAccent.shade400,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Events",
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            label: "Committee",
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: "Contact Us",
            icon: Icon(Icons.contact_mail),

          ),
        ],
      ),
    );
  }

}