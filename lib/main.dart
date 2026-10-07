import 'package:flutter/material.dart';
import 'package:pengembalian_perpustakaan/login.dart';
import 'package:pengembalian_perpustakaan/myhomepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perputakaan',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: const Login(),
      routes: {
        "/" :(context) => const Login(),
        "/home" :(context) => const MyHomePage(),
      }
    );
  }
}

