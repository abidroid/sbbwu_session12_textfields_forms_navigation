
import 'package:flutter/material.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/second_screen.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/third_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  TextEditingController nameC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('First Screen'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [

        TextField(
          controller: nameC,
        ),
        ElevatedButton(onPressed: (){

          String name = nameC.text.trim();

          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return SecondScreen(noom: name );
          }));

        }, child: const Text('Go to 2nd screen')),
        ElevatedButton(onPressed: (){



          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return ThirdScreen(nama: nameC.text.trim(),);
          }));
        }, child: const Text('Go to 3rd screen')),

      ],),
    ),
    );
  }
}
