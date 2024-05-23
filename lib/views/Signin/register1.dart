// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:intl/intl.dart';
// import 'package:save_me/Component/MyTextField.dart';
// import 'package:save_me/Pages/Signin/login.dart';
// import 'package:save_me/Pages/Signin/register2.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButtonNext.dart';
// import 'package:save_me/component/MyText.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   var emailController = TextEditingController();
//   var namaController = TextEditingController();
//   var jeniskelaminController = TextEditingController();
//   var tanggalLahirController = TextEditingController();
//   var notelpController = TextEditingController();

//   List<String> jenkel = ["Pria", "Wanita"];
//   String selectedJenkel = "Pria";

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

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
//                         // MyText(
//                         //   "Sign in with your data that you entered during your registration.",
//                         //   color: Colors.white,
//                         // )
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
//                     height: 10,
//                   ),
//                   Heading1("Nama",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: namaController,
//                     obscureText: false,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Jenis Kelamin",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: DropdownButtonFormField(
//                       isExpanded: false,
//                       value: selectedJenkel,
//                       padding: EdgeInsets.all(0),
//                       decoration: InputDecoration(
//                         labelText: "",
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5),
//                             borderSide: BorderSide.none),
//                       ),
//                       items: jenkel
//                           .map((value) => DropdownMenuItem(
//                                 value: value,
//                                 child: MyText(
//                                   value,
//                                   color: Colors.black,
//                                   fontSize: 16,
//                                 ),
//                               ))
//                           .toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           selectedJenkel =
//                               value!; // Load product data based on the selected vendor.
//                         });
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("Tempat tanggal lahir",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   GestureDetector(
//                     onTap: () async {
//                       DateTime? pickedDate = await showDatePicker(
//                           context: context,
//                           initialDate: DateTime.now(),
//                           firstDate: DateTime(1945),
//                           lastDate: DateTime.now());
//                       if (pickedDate != null) {
//                         print(pickedDate);
//                         String formattedDate =
//                             DateFormat('yyyy-MM-dd').format(pickedDate);
//                         print(formattedDate);
//                         setState(() {
//                           tanggalLahirController.text = formattedDate;
//                         });
//                       } else {
//                         print("Date is not selected");
//                       }
//                     },
//                     child: LoginTextField(
//                       controller: tanggalLahirController,
//                       obscureText: false,
//                       enabled: false,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Heading1("No Telp",
//                       fontWeight: FontWeight.normal,
//                       fontSize: 16,
//                       color: Colors.white),
//                   SizedBox(
//                     height: 3,
//                   ),
//                   LoginTextField(
//                     controller: notelpController,
//                     obscureText: false,
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
//                     height: 10,
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       MyButtonNext(
//                         text: "Login",
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => LoginPage(),
//                             ),
//                           );
//                         },
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       MyButtonNext(
//                         text: "Next",
//                         onPressed: () {
//                           if (emailController.value.text.isNotEmpty &&
//                               namaController.value.text.isNotEmpty &&
//                               tanggalLahirController.value.text.isNotEmpty &&
//                               notelpController.value.text.isNotEmpty) {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Register2Page(
//                                   email: emailController.value.text,
//                                   nama: namaController.value.text,
//                                   jenkel: selectedJenkel,
//                                   tanggal_lahir:
//                                       tanggalLahirController.value.text,
//                                   noTelp: notelpController.value.text,
//                                 ),
//                               ),
//                             );
//                           } else {
//                             MySnackbar(
//                               context,
//                               text: "Fill in all forms",
//                               color: PRIMARY_COLOR,
//                             );
//                           }
//                         },
//                       )
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
