import 'package:design_flutter1/features/home/presentation/widgets/HomeWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int currentIndex =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Interior design',
          style: TextStyle(color: Colors.black),
        ),),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          iconSize: 15,
          selectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
            print(index);
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_back),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'My services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'My requests',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),

          ],
        ),
      body: const HomeWidget(),
    );
  }}
