import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyButton.dart';
import 'package:save_me/component/MyText.dart';
import 'package:save_me/component/MyTextField.dart';
import 'package:save_me/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<void> handleLogin() async {
    final email = emailController.text;
    final password = passwordController.text;
    final res = await supabase.auth
        .signInWithPassword(email: email, password: password);

    if (res.user != null) {
      if (!mounted) return;
      context.goNamed('home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //Container Logo Login
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image.asset(
                        //   "assets/images/favicon.png",
                        //   height: 70,
                        // ),
                        MyText(
                          "Login",
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        MyText(
                          "Sign in with your data that you entered during your registration.",
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  // Form
                  Heading1(
                    "Email",
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Heading1("Password",
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Text("Ingat Saya"),
                      TextButton(
                        onPressed: () {
                          // Navigator.pushReplacement(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return RegisterPage();
                          //   },
                          // ));
                        },
                        child: MyText(
                          "Lupa Password?",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyButton(
                    text: "Login",
                    onPressed: handleLogin,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    text: "Register",
                    onPressed: () {
                      context.goNamed('register');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
