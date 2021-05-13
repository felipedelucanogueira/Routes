import 'package:flutter/material.dart';
import 'package:rotas/second_screen.dart';
import 'package:rotas/third_screen.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              
            }, child: Text('Tela 2')),

            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));

            }, child: Text('Tela 3')),


        ],),
      ),
    );
  }
}
