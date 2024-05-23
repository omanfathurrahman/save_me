// import 'package:flutter/material.dart';
// import 'package:save_me/API/Postme.dart';
// import 'package:save_me/Model/PostmeModel.dart';
// import 'package:save_me/component/GlobalFunction.dart';
// import 'package:save_me/component/MyButton.dart';
// import 'package:save_me/component/MyText.dart';
// import 'package:save_me/component/theme.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class PostMe extends StatefulWidget {
//   const PostMe({super.key});

//   @override
//   State<PostMe> createState() => _PostMeState();
// }

// class _PostMeState extends State<PostMe> {
//   var ceritaController = TextEditingController();
//   List<Posts> listPost = [];
//   String email = "";

//   void getAllPost() async {
//     listPost = (await Postme().getAllPost())!;
//     setState(() {});
//   }

//   void getEmail() async {
//     var prefs = await SharedPreferences.getInstance();
//     email = (await prefs.getString("Email"))!;
//     setState(() {});
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     getEmail();
//     getAllPost();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: mainColor,
//       body: Container(
//         width: getLength("width", context),
//         height: getLength("height", context),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 36,
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: getLength("width", context) * 37 / 100,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 20),
//                       decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                               BorderRadius.vertical(top: Radius.circular(15)),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 offset: Offset(1, 1),
//                                 blurRadius: 2)
//                           ]),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(children: [
//                             ProfilePicture(),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: TextField(
//                                 controller: ceritaController,
//                                 decoration: InputDecoration(
//                                     hintText: "Apa yang ingin kamu ceritakan?",
//                                     border: InputBorder.none),
//                                 style: TextStyle(color: Colors.black54),
//                               ),
//                             )
//                           ]),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Row(
//                                 children: [
//                                   Icon(Icons.image_outlined),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Icon(Icons.gif_box_outlined),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Icon(Icons.emoji_emotions_outlined)
//                                 ],
//                               ),
//                               MyButton(
//                                 onPressed: () {
//                                   Postme().createPost(
//                                       ceritaController.value.text, context);
//                                 },
//                                 text: "Send",
//                                 width: getLength("width", context) * 24 / 100,
//                                 height: 35,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     ListView.separated(
//                       separatorBuilder: (context, index) {
//                         return const SizedBox(
//                           height: 12,
//                         );
//                       },
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: listPost.length,
//                       itemBuilder: (context, index) {
//                         var post = listPost[index];
//                         return CardPostme(
//                           post: post,
//                           email: email,
//                         );
//                       },
//                     ),
//                     SizedBox(
//                       height: 12,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CardPostme extends StatelessWidget {
//   const CardPostme({
//     super.key,
//     required this.post,
//     required this.email,
//   });

//   final Posts post;
//   final String email;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//           boxShadow: [
//             BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)
//           ]),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(children: [
//                 ProfilePicture(),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       post.username!,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.w500),
//                     ),
//                     Text(
//                       "@${post.email}",
//                       style: TextStyle(color: Colors.black54),
//                     )
//                   ],
//                 ),
//               ]),
//               (email == post.email)
//                   ? PopupMenuUser(context)
//                   : PopupMenuNotUser(),
//             ],
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Text(post.text!),
//           SizedBox(
//             height: 12,
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.favorite_border),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text("100"),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Icon(Icons.comment_outlined),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Text("80")
//                 ],
//               ),
//               Icon(Icons.bookmark_border)
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   PopupMenuButton<String> PopupMenuUser(BuildContext context) {
//     return PopupMenuButton<String>(
//       color: Colors.white,
//       onSelected: (String value) {
//         if (value == 'delete') {
//           Postme().deletePost(post.id!, context);
//         } else if (value == 'update') {
//           _showUpdateDialog(context, id: post.id!, text: post.text!);
//         }
//       },
//       itemBuilder: (BuildContext context) {
//         return [
//           PopupMenuItem<String>(
//             value: 'delete',
//             child: Row(
//               children: [
//                 Icon(Icons.delete, color: Colors.red),
//                 SizedBox(width: 8),
//                 Text("Delete", style: TextStyle(color: Colors.red)),
//               ],
//             ),
//           ),
//           PopupMenuItem<String>(
//             value: 'update',
//             child: Row(
//               children: [
//                 Icon(Icons.edit),
//                 SizedBox(width: 8),
//                 Text("Update"),
//               ],
//             ),
//           ),
//         ];
//       },
//       icon: Icon(Icons.menu),
//     );
//   }
// }

// class PopupMenuNotUser extends StatelessWidget {
//   const PopupMenuNotUser({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<String>(
//         color: Colors.white,
//         onSelected: (String value) {
//           if (value == 'report') {
//             // Postme().deletePost(post.id!, context);
//           }
//         },
//         itemBuilder: (BuildContext context) {
//           return [
//             PopupMenuItem<String>(
//               value: 'report',
//               child: Row(
//                 children: [
//                   Icon(Icons.flag),
//                   SizedBox(width: 5,),
//                   Text("Report"),
//                 ],
//               ),
//             ),
//           ];
//         },
//         icon: Icon(Icons.menu),
//       );
//   }
// }

// class ProfilePicture extends StatelessWidget {
//   const ProfilePicture({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(
//         color: Colors.grey.shade600,
//         shape: BoxShape.circle,
//       ),
//       child: const Icon(Icons.person),
//     );
//   }
// }

// void _showUpdateDialog(BuildContext context,
//     {required String id, required String text}) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       TextEditingController updateController = TextEditingController();
//       updateController.text = text;
//       return AlertDialog(
//         title: Text("Update Post"),
//         content: TextField(
//           controller: updateController,
//           decoration: InputDecoration(labelText: "Enter updated text"),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop(); // Close the dialog
//             },
//             child: Text("Cancel"),
//           ),
//           TextButton(
//             onPressed: () {
//               Postme().updatePost(id, updateController.text, context);
//             },
//             child: Text("Update"),
//           ),
//         ],
//       );
//     },
//   );
// }
