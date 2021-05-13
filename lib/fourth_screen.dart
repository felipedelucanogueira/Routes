import 'package:flutter/material.dart';
import 'package:rotas/home_screen.dart';
import 'package:rotas/third_screen.dart';

class FourthParameters {
  final String name;
  final int idade;
  FourthParameters([this.name = '', this.idade = 0]);
}

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context).settings.arguments as FourthParameters;
    final defaultParameters = FourthParameters();
    return Scaffold(
      appBar: AppBar(
        title: Text('FourthScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${parameters?.name ?? defaultParameters.name }'),
            Text('  ${parameters?.idade ?? defaultParameters.idade}'),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            }, child: Text('Home')),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Voltar')),
          ],
        ),
      ),
    );
  }
}
