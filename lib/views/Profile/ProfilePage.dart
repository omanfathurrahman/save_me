// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:save_me/API/Authentications.dart';
// import 'package:save_me/Model/UserModel.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyText.dart';

// Color greyColor = HexColor("#F5F5F5");

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   late Future<User?> userFuture;

//   @override
//   void initState() {
//     super.initState();
//     userFuture = Authentications().getUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: greyColor,
//       body: Container(
//         height: getLength("height", context),
//         width: getLength("width", context),
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             MyText(
//               "Personal Detail",
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//             SizedBox(height: 12),
//             FutureBuilder<User?>(
//               future: userFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return CircularProgressIndicator(); // Loading indicator while fetching data
//                 } else if (snapshot.hasError) {
//                   return MyText('Error: ${snapshot.error}');
//                 } else if (!snapshot.hasData || snapshot.data == null) {
//                   return MyText('No user data available.');
//                 } else {
//                   User user = snapshot.data!;
//                   return Container(
//                     padding: EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Expanded(
//                             child: Image.asset("assets/images/sumguy.png")),
//                         SizedBox(width: 12),
//                         Expanded(
//                           flex: 2,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               MyText(
//                                 user.username!,
//                                 fontSize: 18,
//                               ),
//                               MyText(
//                                 user.email!,
//                                 color: Colors.grey,
//                               ),
//                               SizedBox(height: 4),
//                               MyDivider(),
//                               SizedBox(height: 4),
//                               MyText(
//                                 user.notelp!,
//                                 color: Colors.grey,
//                               ),
//                               SizedBox(height: 4),
//                               MyDivider(),
//                               SizedBox(height: 4),
//                               MyText(
//                                 "Bandung, Indonesia",
//                                 color: Colors.grey,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               },
//             ),
//             SizedBox(height: 12),
//             MenuProfile(
//               text: "Setting",
//             ),
//             SizedBox(height: 12),
//             MenuProfile(
//               text: "Riwayat Laporan",
//             ),
//             SizedBox(height: 12),
//             MenuProfile(
//               text: "Feedback",
//             ),
//             SizedBox(height: 12),
//             GestureDetector(
//               onTap: () {
//                 Authentications().logout(context);
//               },
//               child: MenuProfile(
//                 text: "Logout",
//               ),
//             ),
//             SizedBox(height: 12),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyDivider extends StatelessWidget {
//   const MyDivider({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 1,
//       width: 150,
//       color: Colors.grey,
//     );
//   }
// }

// class MenuProfile extends StatelessWidget {
//   const MenuProfile({
//     super.key,
//     required this.text,
//   });
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: getLength("width", context),
//       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(10)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           MyText(
//             text,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.arrow_forward_ios,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
