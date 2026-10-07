import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController inputNama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Perpustakaan'),
      backgroundColor: Color (0xFFF6F0D7),
    ),
    backgroundColor: Color (0xFFF6F0D7),
    body: Column(
      children: [
        Center(
          child: Container(
            width: 300,
            color: Color (0xC5D89D),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nama Pengguna',
                border: OutlineInputBorder(),  
            ),
            controller: inputNama,
            onSubmitted: (value) {
              inputNama.text = value;
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
      ),
      ElevatedButton(
        child: Text('Tampilkan Nama'),
        onPressed: () {
          print(inputNama.text);
        },
      ),
      ],
    ),
    );
  }
}
