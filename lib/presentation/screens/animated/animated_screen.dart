import 'dart:math' show Random;
import 'package:flutter/material.dart';


class AnimatedScreen extends StatefulWidget {

  static const name = 'animated_screen';
  
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double widht  = 50;
  double height = 50;
  Color color   = Colors.indigo;
  double borderRadius = 10.0;

  void changeShaped() {
    
    final randon = Random();

    widht  = randon.nextInt(300) + 120;
    height = randon.nextInt(300) + 120;
    borderRadius = randon.nextInt(100) + 20;
    color = Color.fromRGBO(
      randon.nextInt(255), //red
      randon.nextInt(255), //green
      randon.nextInt(255), //blue
      1 
     );



    setState(() {
      
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 10),
        child: FloatingActionButton(
          onPressed: changeShaped,
          child: const Icon(Icons.play_arrow_rounded),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          width: widht,
          height: height,
          curve: Curves.bounceOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: color
          ),
          duration: const Duration( milliseconds: 400),
        
          ),
      ),
      
    );
  }
}