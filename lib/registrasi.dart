import 'package:flutter/material.dart';
import 'package:flutter_project/kalkulator.dart';
import 'package:flutter_project/inputNumber.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();

  Widget txtInput(String username, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: username
      ),
    );
  }

  Widget btnRegister(String text) {
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (BuildContext context) => Kalkulator(name: ctrNama.text,)));
      }, child: Text(text)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Container(
        child: Column(
          children: [
            txtInput("username", ctrUsername),
            SizedBox(height: 10,),
            txtInput("nama", ctrNama),
            SizedBox(height: 10,),
            btnRegister("Submit"),
            Row(
              children: [
                Text('Phone Number : ' + phoneNumber.text),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  InputNumber())
                  );

                  setState(() {
                    phoneNumber.text = result.toString();
                  });

                }, child: Text('Input Phone'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
