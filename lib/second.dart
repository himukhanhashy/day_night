import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Xtream extends StatefulWidget {
  const Xtream({Key? key}) : super(key: key);

  @override
  _XtreamState createState() => _XtreamState();
}

class _XtreamState extends State<Xtream> {
  bool _switch=true;
  ThemeData _light= ThemeData(brightness:Brightness.light);
  ThemeData _dark = ThemeData(brightness:Brightness.dark);
  @override
  Widget build(BuildContext context) {
    theme: _switch ? _light :_dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
    title:Text('Day',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
    centerTitle: true,
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset('images/sun.jpg'),
    Icon(Icons.lightbulb,size: 90,color: Colors.orange,),
    Text('switch',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.cyan,letterSpacing: 5),),
    Switch(value: _switch ,onChanged:(_newvalue) {
    setState(() {
    _switch=_newvalue;
    }
    );
    }
    ),
    ],
    ),
    ),
    );
  }
}
