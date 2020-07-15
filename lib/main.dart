import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void play(int no){
    final player=AudioCache();
    player.play('note$no.wav');
  }
  Expanded bar (Color color,int num){
    return Expanded(child:FlatButton(color: color,
      onPressed: (){
        play(num);
      }, ),);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: <Widget>[
                bar(Colors.red, 1),
                bar(Colors.orange, 2),
                bar(Colors.yellowAccent, 3),
                bar(Colors.green, 4),
                bar(Colors.teal, 5),
                bar(Colors.blue, 6),
                bar(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
        

  }
}
