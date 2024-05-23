import 'package:flutter/material.dart';
import 'package:save_me/router/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://lkpxbolqowfkflnfcjqr.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxrcHhib2xxb3dma2ZsbmZjanFyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYzODQzMDQsImV4cCI6MjAzMTk2MDMwNH0.cOc89-OyNVinAOd6DbXzhpBNOyThve0BhKRY4h3O5zs',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

final supabase = Supabase.instance.client;
