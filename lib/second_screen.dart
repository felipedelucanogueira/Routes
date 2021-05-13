import 'package:flutter/material.dart';
import 'package:rotas/fourth_screen.dart';
import 'package:rotas/third_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));

            }, child: Text('Tela 3')),


            ElevatedButton(onPressed: (){
              final parameters = FourthParameters('Felipe', 23);
              Navigator.pushNamed(context, 'fourth',arguments: parameters);
            }, child: Text('Tela 4')),


          ],),
      ),
    );
  }
}
