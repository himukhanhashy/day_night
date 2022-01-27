import 'package:flutter/material.dart';
import 'package:day_night/second.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _switch=false;
  ThemeData _light = ThemeData(brightness:Brightness.light);
  ThemeData _dark= ThemeData(brightness:Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _light :_dark,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Night',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/moon.jpg'),
              Icon(Icons.lightbulb,size: 90,color: Colors.orange,),
              Text('switch',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.orange,letterSpacing: 5),),
              Switch(value: _switch ,onChanged:(_newvalue) {
                setState(() {Navigator.push(context, MaterialPageRoute(builder: (context)=>Xtream(
                ),
                ),
                );
                  _switch=_newvalue;
                });
              }
              ),
            ],
          ),
        ),
      ),
    );
  }
}