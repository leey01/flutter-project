import 'package:flutter/material.dart';
import 'package:flutter_project/apps/app1.dart';
import 'package:flutter_project/apps/inputName.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'Sejati';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.lightBlue,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hai '+ name,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Bagaimana hari ini?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white
                        ),
                        onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputName())
                      );

                      setState(() {
                        name = result.toString();
                      });

                    }, child: Text(
                        'Input Name',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}



