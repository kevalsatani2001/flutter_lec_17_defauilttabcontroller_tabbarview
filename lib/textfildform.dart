import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Text_Form_Field extends StatefulWidget {
  const Text_Form_Field({Key? key}) : super(key: key);

  @override
  State<Text_Form_Field> createState() => _Text_Form_FieldState();
}

class _Text_Form_FieldState extends State<Text_Form_Field> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //const TextField(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                  onChanged: (value) => email = value,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your Email',
                  )),
            ),
           const  SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                  onChanged: (value) => password = value,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your Password',
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  print(email);
                  print(password);
                },
                child: const Text("cheak Value"))
          ],
        ),
      ),
    );
  }
}
