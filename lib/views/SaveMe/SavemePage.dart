// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButton.dart';
// import 'package:save_me/component/MyText.dart';

// class SavemePage extends StatelessWidget {
//   const SavemePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         width: getLength("width", context),
//         height: getLength("height", context),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/images/warning.png"),
//             SizedBox(height: 12,),
//             MyText(
//               "In Emergency?",
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//             SizedBox(height: 12,),
//             MyText(
//               "We will automatically connect you with your friends",
//               textAlign: TextAlign.center,
//               color: HexColor("#545563"),
//               fontWeight: FontWeight.bold,
//             ),
//             SizedBox(height: 36,),
//             MyButton(
//               backgroundColor: PRIMARY_COLOR.withOpacity(0.8),
//               onPressed: () {},
//               text: "Contact Friends",
//             ),
//             SizedBox(height: 12,),
//           ],
//         ),
//       ),
//     );
//   }
// }
