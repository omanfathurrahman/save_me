import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyText.dart';
import 'package:save_me/component/theme.dart';
import 'package:save_me/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentScreenIndex = 0;

  Future<void> handleLogout() async {
    await supabase.auth.signOut();
    if (!mounted) return;
    context.pushReplacementNamed('login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 2)
                          ]),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(
                            width: 20,
                          ),
                          MyText("Search")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: getLength("width", context),
                      height: getLength("width", context) * 90 / 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/kompasimg.png",
                              width: getLength("width", context) * 90 / 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2017 Ada 12 Kasus Pelecehan Seksual di KRL",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/kompasicon.png",
                                width: 10,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text("Kompas.com"),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/verified.png",
                                width: 10,
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: handleLogout,
                              child: const Text('logout'))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreenIndex,
        indicatorColor: Colors.amber,
        onDestinationSelected: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        destinations: [
          const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          const NavigationDestination(
              icon: Icon(Icons.slideshow), label: 'Webinar'),
          const NavigationDestination(icon: Icon(Icons.report), label: 'Lapor'),
          const NavigationDestination(
              icon: Icon(Icons.chat_bubble), label: 'Deep Talk'),
        ],
      ),
    );
  }
}
