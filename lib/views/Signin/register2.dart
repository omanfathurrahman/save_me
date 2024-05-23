// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:save_me/API/Authentications.dart';
// import 'package:save_me/Component/MyTextField.dart';
// import 'package:save_me/Pages/Signin/login.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButton.dart';
// import 'package:save_me/component/MyButtonNext.dart';
// import 'package:save_me/component/MyText.dart';

// class Register2Page extends StatefulWidget {
//   const Register2Page(
//       {super.key,
//       required this.email,
//       required this.nama,
//       required this.jenkel,
//       required this.tanggal_lahir,
//       required this.noTelp});

//   final String email;
//   final String nama;
//   final String jenkel;
//   final String tanggal_lahir;
//   final String noTelp;

//   @override
//   State<Register2Page> createState() => _Register2PageState();
// }

// class _Register2PageState extends State<Register2Page> {
//   var nodaruratController = TextEditingController();
//   var usernameController = TextEditingController();
//   var passwordController = TextEditingController();
//   var repasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: HexColor("#EB1C24"),
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
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             MyText(
//                               "Register",
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Form
//                   Heading1(
//                     "No Darurat",
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: nodaruratController,
//                     obscureText: false,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Username",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: usernameController,
//                     obscureText: false,
//                   ),
//                   SizedBox(
//                     height: 10,
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
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Re-password",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: repasswordController,
//                     obscureText: true,
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),

//                   Container(
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           MyButton(
//                             width: getLength("width", context) * 40 / 100,
//                             text: "Register",
//                             onPressed: () {
//                               if (passwordController.value.text.isNotEmpty &&
//                                   nodaruratController.value.text.isNotEmpty &&
//                                   usernameController.value.text.isNotEmpty) {
//                                 Authentications().register(
//                                   context,
//                                   email: widget.email,
//                                   nama: widget.nama,
//                                   password: passwordController.value.text,
//                                   jenkel: widget.jenkel,
//                                   tanggal_lahir: widget.tanggal_lahir,
//                                   noTelp: widget.noTelp,
//                                   noDarurat: nodaruratController.value.text,
//                                   username: usernameController.value.text,
//                                 );
//                               } else {}
//                             },
//                           ),
//                         ]),
//                   ),

//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       MyButtonNext(
//                         text: "Prev",
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                     ],
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
