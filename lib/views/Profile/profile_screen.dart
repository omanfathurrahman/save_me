import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyText.dart';
import 'package:save_me/main.dart';

Color greyColor = HexColor("#F5F5F5");

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<void> handleLogout() async {
    await supabase.auth.signOut();
    if (!mounted) return;
    context.pushReplacementNamed('login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MyText(
              "Personal Detail",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(child: Image.asset("assets/images/sumguy.png")),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          "Bjir",
                          fontSize: 18,
                        ),
                        MyText(
                          "Email",
                          color: Colors.grey,
                        ),
                        // const SizedBox(height: 4),
                        // const MyDivider(),
                        // const SizedBox(height: 4),
                        // MyText(
                        //   user.notelp!,
                        //   color: Colors.grey,
                        // ),
                        // const SizedBox(height: 4),
                        // const MyDivider(),
                        // const SizedBox(height: 4),
                        MyText(
                          "Bandung, Indonesia",
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 12),
            // const MenuProfile(
            //   text: "Setting",
            // ),
            const SizedBox(height: 12),
            const MenuProfile(
              text: "Riwayat Laporan",
            ),
            const SizedBox(height: 12),
            const MenuProfile(
              text: "Feedback",
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 150,
      color: Colors.grey,
    );
  }
}

class MenuProfile extends StatelessWidget {
  const MenuProfile({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getLength("width", context),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
