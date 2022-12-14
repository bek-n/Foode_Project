import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/pages/home_page.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {

  List<Widget> mainPages=[
          HomePage(),
          Placeholder(),
          Placeholder(),
          Placeholder(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainPages[currentIndex],
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            child: BottomNavyBar(
                selectedIndex: currentIndex,
                showElevation: true,
                backgroundColor: Colors.white,
                containerHeight: 91,
                itemCornerRadius: 24,
                curve: Curves.decelerate,
                items: [
                  BottomNavyBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Home'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                      icon: Icon(Icons.shopping_basket),
                      title: Text('Order'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                      icon: Icon(Icons.message),
                      title: Text('Chat'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile'),
                    activeColor: Color(0xffFF1843),
                  )
                ],
                onItemSelected: ((value) => setState(() {
                      currentIndex = value;
                    }))),
          ),
        ),
    );
  }
}