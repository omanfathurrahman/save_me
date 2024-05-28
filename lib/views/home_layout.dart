import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/theme.dart';
import 'package:save_me/main.dart';
import 'package:save_me/views/HomePage/homepage_screen.dart';
import 'package:save_me/views/Profile/profile_screen.dart';
import 'package:save_me/views/Report/Report1.dart';
import 'package:save_me/views/Webinar/WebinarScreen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentScreenIndex = 0;

  List<Widget> screens = [
    const HomepageScreen(),
    Webinarscreen(),
    Report1(),
    const Text('Deep Talk'),
    const ProfileScreen(),
  ];

  List<String> appBars = [
    'Home',
    'Webinar',
    'Lapor',
    'Deep Talk',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 112, 112),
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(appBars[currentScreenIndex]),
      ),
      body: screens[currentScreenIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreenIndex,
        indicatorColor: Colors.amber,
        onDestinationSelected: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.slideshow),
            label: 'Webinar',
          ),
          NavigationDestination(
            icon: Icon(Icons.report),
            label: 'Lapor',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble),
            label: 'Deep Talk',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
