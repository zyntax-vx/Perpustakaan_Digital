import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key,});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController namaPengguna = new TextEditingController();
  TextEditingController kataSandi = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(
        child: Text('Admin Login'),
      ),
      backgroundColor: Color (0xFFC5D89D),
    ),
    backgroundColor: Color (0xFFF6F0D7),
    body: Column(
      children: [
        Center(
          child: Container(
            width: 300,
            color: Color (0xFFF6F0D7),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nama Pengguna',
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8.0),  
                )
            ),
            controller: namaPengguna,
            onSubmitted: (value) {
              namaPengguna.text = value;
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(30.0),
      ),
      

      Center(
        child: Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Kata Sandi',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),

            ),
            controller: kataSandi,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(30.0),
      ),
      ElevatedButton(
        child: Text('Login'),
        onPressed: () {
          print(namaPengguna.text);
          print(kataSandi.text);
        },
      ),
      ],
    ),
    );
  }
}
