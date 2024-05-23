// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:save_me/API/Authentications.dart';
// import 'package:save_me/Component/MyTextField.dart';
// import 'package:save_me/Pages/Signin/register1.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButton.dart';
// import 'package:save_me/component/MyText.dart';
// import 'package:save_me/main.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: PRIMARY_COLOR,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 35, vertical: 40),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     //Container Logo Login
//                     padding: EdgeInsets.symmetric(vertical: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "assets/images/favicon.png",
//                           height: 70,
//                         ),
//                         MyText(
//                           "Login",
//                           fontSize: 60,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           height: 12,
//                         ),
//                         MyText(
//                           "Sign in with your data that you entered during your registration.",
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                   // Form
//                   Heading1(
//                     "Email",
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: emailController,
//                     obscureText: false,
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Heading1("Password",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: passwordController,
//                     obscureText: true,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       // Text("Ingat Saya"),
//                       TextButton(
//                         onPressed: () {
//                           // Navigator.pushReplacement(context, MaterialPageRoute(
//                           //   builder: (context) {
//                           //     return RegisterPage();
//                           //   },
//                           // ));
//                         },
//                         child: MyText(
//                           "Lupa Password?",
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   MyButton(
//                     text: "Login",
//                     onPressed: () {
//                       if (emailController.value.text.isEmpty ||
//                           passwordController.value.text.isEmpty) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: MyText("Fill in all forms"),
//                           ),
//                         );
//                       } else {
//                         Authentications().login(emailController.value.text,
//                             passwordController.value.text, context);
//                       }
//                     },
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyButton(
//                     text: "Register",
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RegisterPage(),
//                           ));
//                       if (emailController.value.text.isEmpty ||
//                           passwordController.value.text.isEmpty) {
//                         // MyDialogAlert().showDialog(
//                         //   context,
//                         //   description: "Fill out all form",
//                         //   title: "Warning",
//                         //   type: DialogType.warning,
//                         // );
//                       } else {
//                         // var authentication = Authentications();
//                         // authentication.userLogin(emailController.value.text,
//                         //     passwordController.value.text, context);
//                       }
//                     },
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
