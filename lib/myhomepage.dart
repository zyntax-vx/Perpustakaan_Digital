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
    return Scaffold(
      appBar: AppBar(
       title: Text('Perpustakaan')),
       backgroundColor: Color (0xFFF6F0D7),
       body: Column(
        children: [
          TextField(
            controller: inputNama,
            onSubmitted: (values) {
              inputNama.text = values;
            },
          ),
          ElevatedButton(
            child: Text('Tampilkan Nama'),
            onPressed: () {
              setState(() {
                print(inputNama.text);
              }
              );
            },
            
          ),
        ],
       ),
    );
  }
}
