import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  var backgroundColor;
  ThirdScreen([this.backgroundColor = Colors.black]);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdScreen'),
      ),
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('voltar')),
            ElevatedButton(onPressed: () {
              Navigator.popAndPushNamed(context, 'fourth');
            }, child: Text('Tela 4')),
          ],
        ),
      ),
    );
  }
}
