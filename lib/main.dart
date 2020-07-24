import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

  class MagicBall extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue[700],
        title: Text('Ask Me Anything'),         
        ),
        body: Ball(),
      );
    
     
    }
  }

  class Ball extends StatefulWidget {
    @override
    _BallState createState() => _BallState();
  }
 
  class _BallState extends State<Ball> {
     int ballNumber = 1;

  void clickedbutton(){ 
    setState(() {
      for (var i = 1; i < 6; i++) {
     ballNumber = Random().nextInt(i) + 1;
       }        
        // print(ballNumber);        
      });
  }
    @override
    Widget build(BuildContext context) {
      return Center(
        child:Row(
        children: <Widget>[
         Expanded(
           child:FlatButton(
             onPressed:(){
            clickedbutton();},
              child: Image.asset('images/ball$ballNumber.png')
           )
           
                 
           
           
           
          ),
         ],
        ),
      );
    }
  }  
