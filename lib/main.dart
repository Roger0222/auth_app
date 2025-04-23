import 'package:auth_app/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx6cmZ1am9vZGJncXVydWJmbmpoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUzNjQxMzcsImV4cCI6MjA2MDk0MDEzN30.-g-smP2V_3gdwFLOlglH9aFDPDJMzUvIoDto5GaSG9M",
    url: "https://lzrfujoodbgqurubfnjh.supabase.co",
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

