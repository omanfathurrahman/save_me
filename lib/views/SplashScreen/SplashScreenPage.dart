// import 'package:flutter/material.dart';
// import 'package:save_me/API/Authentications.dart';
// import 'package:save_me/Pages/Signin/login.dart';
// import 'package:save_me/component/GlobalFunction.dart';

// class SplashScreenPage extends StatefulWidget {
//   const SplashScreenPage({super.key});

//   @override
//   State<SplashScreenPage> createState() => _SplashScreenPageState();
// }

// class _SplashScreenPageState extends State<SplashScreenPage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     Future.delayed(
//       Duration(seconds: 2),
//       () async {
//         Authentications().checkToken(context);
//         // Navigator.pushReplacement(
//         //     context,
//         //     MaterialPageRoute(
//         //       builder: (context) => LoginPage(),
//         //     ));
//       },
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: PRIMARY_COLOR,
//       body: Container(
//         width: getLength("width", context),
//         height: getLength("height", context),
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Image.asset(
//                 "assets/images/favicon.png",
//                 height: 300,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
