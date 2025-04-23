import 'package:auth_app/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();  // Load the environment variables

  await Supabase.initialize(
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,  // Access the anon key from the .env file
    url: dotenv.env['SUPABASE_URL']!,  // Access the URL from the .env file
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthGate(),
    );
  }
}
