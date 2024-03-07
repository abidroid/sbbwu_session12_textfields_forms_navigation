

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/textfield_demo_screen.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  TextEditingController firstC = TextEditingController();
  TextEditingController secondC = TextEditingController();

  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(title: const Text('Calculator'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(children: [

        TextField(
          keyboardType: TextInputType.number,
          controller: firstC,
          decoration: const InputDecoration(
            hintText: 'First Number',
            border: OutlineInputBorder()
          ),
        ),
        const Gap(20),
        TextField(
          keyboardType: TextInputType.number,

          controller: secondC,
          decoration: const InputDecoration(
              hintText: 'Second Number',
              border: OutlineInputBorder()
          ),
        ),
        const Gap(20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(onPressed: (){

            String first = firstC.text.trim();
            String second = secondC.text.trim();

            // converting string to int
            int no1 = int.parse(first);
            int no2 = int.parse(second);

            int sum = no1 + no2;

            setState(() {
              result = 'Sum = $sum';
            });


          }, child: const Text('+')),
          ElevatedButton(onPressed: (){}, child: const Text('-')),
          ElevatedButton(onPressed: (){}, child: const Text('*')),
          ElevatedButton(onPressed: (){}, child: const Text('/')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: (){
                  firstC.clear();
                  secondC.clear();

                  setState(() {
                    result = '';
                  });

                }, child: const Text('C', style: TextStyle(color: Colors.white),)),

        ],),

        const Gap(20),
        Text(result),
        const Gap(20),
        ElevatedButton(onPressed: (){

          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const TextFieldDemoScreen();
          }));

        }, child: const Text('Go to TextField Demo Screen'),),
      ],),
    ),
    );
  }
}
