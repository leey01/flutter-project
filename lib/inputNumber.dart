import 'package:flutter/material.dart';

class InputNumber extends StatefulWidget {
  const InputNumber({Key? key}) : super(key: key);

  @override
  State<InputNumber> createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {
  TextEditingController ctrPhone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Phone'),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input Phone'
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context, ctrPhone.text);
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
