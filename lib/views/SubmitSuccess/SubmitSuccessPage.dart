// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyText.dart';
// import 'package:save_me/main.dart';

// class SubmitSuccessPage extends StatefulWidget {
//   const SubmitSuccessPage({super.key});

//   @override
//   State<SubmitSuccessPage> createState() => _SubmitSuccessPageState();
// }

// class _SubmitSuccessPageState extends State<SubmitSuccessPage> {
//   Color colorBlue = HexColor("#3671FF");

//   @override
//   void initState() {
//     // TODO: implement initState
//     Future.delayed(
//       Duration(seconds: 2),
//       () {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => MainPage(),));
//       },
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: colorBlue,
//       body: Container(
//         width: getLength("width", context),
//         height: getLength("height", context),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.check_circle,
//               size: 100,
//               color: Colors.white,
//             ),
//             MyText(
//               "Submit Successful",
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//               color: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
