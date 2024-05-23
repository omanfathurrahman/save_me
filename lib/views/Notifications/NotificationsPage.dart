import 'package:flutter/material.dart';
import 'package:save_me/component/GlobalFunction.dart';
import 'package:save_me/component/MyText.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          "Notifications",
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: getLength("width", context),
        height: getLength("height", context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              "New Activity",
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
