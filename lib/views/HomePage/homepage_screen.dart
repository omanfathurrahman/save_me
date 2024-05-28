import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:save_me/main.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  Future<void> handleLogout() async {
    await supabase.auth.signOut();
    if (!mounted) return;
    context.pushReplacementNamed('login');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/kompasimg.png",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "2017 Ada 12 Kasus Pelecehan Seksual di KRL",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: handleLogout,
                child: const Text('logout'),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/kompasimg.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "2017 Ada 12 Kasus Pelecehan Seksual di KRL",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: handleLogout,
                child: const Text('logout'),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/kompasimg.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "2017 Ada 12 Kasus Pelecehan Seksual di KRL",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: handleLogout,
                child: const Text('logout'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
