import 'package:flutter/material.dart';
import 'package:save_me/component/webinar_item.dart';
import 'package:save_me/main.dart';

class Webinarscreen extends StatefulWidget {
  const Webinarscreen({super.key});

  @override
  State<Webinarscreen> createState() => _WebinarscreenState();
}

class _WebinarscreenState extends State<Webinarscreen> {
  final _webinarList = supabase.from('webinar').select();

  Future<void> handleDaftarWebinar() async {}

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: FutureBuilder(
          future: _webinarList,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return WebinarItem(
                  id: snapshot.data![index]['id'],
                  title: snapshot.data![index]['title'],
                  dateTime: DateTime.parse(snapshot.data![index]['datetime']),
                  shortDescription: snapshot.data![index]['shortDescription'],
                  longDescription: snapshot.data![index]['longDescription'],
                );
              },
            );
          },
        ));
  }
}
