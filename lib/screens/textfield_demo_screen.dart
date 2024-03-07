import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class TextFieldDemoScreen extends StatefulWidget {
  const TextFieldDemoScreen({super.key});

  @override
  State<TextFieldDemoScreen> createState() => _TextFieldDemoScreenState();
}

class _TextFieldDemoScreenState extends State<TextFieldDemoScreen> {

  bool obscureText = false;
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title:  Text(title, style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [

          TextField(
            controller: firstController,
            decoration: InputDecoration(
              hintText: 'First Name',
              labelText: 'First Namee',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.person),

            ),
          ),
          const Gap(20),

          TextField(
            controller: lastController,
            decoration: InputDecoration(
                hintText: 'Last Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              prefixIcon: const Icon(Icons.person),


            ),
          ),

          const Gap(20),

          TextField(
            // obscure = hide
            obscureText: obscureText,
            obscuringCharacter: '#',
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(onPressed: (){

                setState(() {

                  obscureText = !obscureText;

                  /*
                  E = mc2
                  Error = more code
                   */
                });

              }, icon: Icon( obscureText ? Icons.visibility_off : Icons.visibility),),
            ),
          ),

          const Gap(20),

          TextField(
            keyboardType: TextInputType.number,
            maxLength: 11,
            decoration: InputDecoration(
              hintText: 'Mobile Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              prefixIcon: const Icon(Icons.phone),
              prefixIconColor: Colors.red,
            ),
            onChanged: (String text){
              setState(() {
                title = text;
              });
            },

          ),

          const Gap(20),

          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Comments',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              prefixIcon: const Icon(Icons.edit),


            ),
          ),

          Gap(20),
          ElevatedButton(onPressed: (){

            String firstName = firstController.text.trim();
            String lastName = lastController.text.trim();

            if( firstName.isEmpty ){
              Fluttertoast.showToast(msg: 'Please provide first name');
              return;
            }

            if( lastName.isEmpty){
              Fluttertoast.showToast(msg: 'Please provide last name');
              return;
            }

            String fullName = '$firstName $lastName';
            Fluttertoast.showToast(msg: 'Full Name $fullName');

          }, child: const Text('Submit'))

        ],),
      ),
    );
  }
}
