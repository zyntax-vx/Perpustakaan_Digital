import 'package:flutter/material.dart';
import 'package:pengembalian_perpustakaan/myhomepage.dart';

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
        Center(child: Image(
          // image: AssetImage('asset/images/logo.png'),
          image: AssetImage('asset/logo.jpg'),
          width: 300,
          height: 200,
          
        ),
        ),
        SizedBox(width: 20.0),
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
      //kasih jarak antar widget
      Padding(
        padding: EdgeInsets.all(30.0),
      ),
      //tombol
      ElevatedButton(
        child: Text('Login'),
        onPressed: () {
          //cek kosong
          if (namaPengguna.text.isEmpty || kataSandi.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Nama Pengguna Dan Kata Sandi Tidak Boleh Kosong!!"),
              backgroundColor: Colors.red,
            ),
          );
          return;
          }

          if (namaPengguna.text != 'Admin' || kataSandi.text != '12345') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Nama Pengguna Atau Kata Sandi Salah!"),
              backgroundColor: Colors.red,
              ),
            );
          }
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        },
      ),
      ],
    ),
    );
  }
}
