// import 'package:flutter/material.dart';
// import 'package:save_me/Component/MyTextField.dart';
// import 'package:save_me/Pages/Report/Report2.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButtonNext.dart';
// import 'package:save_me/component/MyText.dart';
// import 'package:save_me/component/theme.dart';

// class Report1 extends StatefulWidget {
//   const Report1({super.key});

//   @override
//   State<Report1> createState() => _Report1State();
// }

// class _Report1State extends State<Report1> {
//   var emailController = TextEditingController();
//   var telephoneNumber = TextEditingController();
//   var nameOfCompainant = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: const BackButton(),
//         backgroundColor: Colors.white,
//         elevation: 2,
//         centerTitle: true,
//         title: const Text("Reporting",
//             style: TextStyle(fontWeight: FontWeight.bold)),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset(
//                     "assets/images/reportingimg.jpg",
//                     width: getLength("width", context) * 90 / 100,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text(
//                     "Complainant Informations",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Heading1(
//                     "Name of complainant",
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     color: formreport,
//                     controller: nameOfCompainant,
//                     obscureText: false,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Telephone number ",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                       color: Colors.black),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     color: formreport,
//                     controller: telephoneNumber,
//                     obscureText: false,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Email ",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                       color: Colors.black),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     color: formreport,
//                     controller: emailController,
//                     obscureText: false,
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       MyButtonNext(
//                           onPressed: () {
//                             if (nameOfCompainant.value.text.isNotEmpty &&
//                                 telephoneNumber.value.text.isNotEmpty &&
//                                 emailController.value.text.isNotEmpty) {
//                               Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) {
//                                   return Report2(
//                                     name: nameOfCompainant.value.text,
//                                     noTelp: telephoneNumber.value.text,
//                                     email: emailController.value.text,
//                                   );
//                                 },
//                               ));
//                             } else {
//                               MySnackbar(
//                                 context,
//                                 text: "Fill in all forms",
//                                 color: PRIMARY_COLOR,
//                               );
//                             }
//                           },
//                           text: "Next",
//                           color: secondColor),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
