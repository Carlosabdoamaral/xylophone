import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.mainColor, required this.colorName}) : super(key: key);

  final Color? mainColor;
  final String colorName;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    void _playSound(int i) {
      AudioCache player = AudioCache();
      player.play('note$i.wav');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: widget.mainColor,
        title: Text(
          widget.colorName,
          style: TextStyle(
            fontFamily: 'Poppins Regular',
            fontSize: 25
          ),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),

        child: Column(
          children: [
            GestureDetector(
              onTap: () { _playSound(1); },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: widget.mainColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(2); },
              child: Container(
                height: 100,
                color: widget.mainColor?.withOpacity(0.8),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(3); },
              child: Container(
                height: 100,
                color: widget.mainColor?.withOpacity(0.6),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(4); },
              child: Container(
                height: 100,
                color: widget.mainColor?.withOpacity(0.4),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(5); },
              child: Container(
                height: 100,
                color: widget.mainColor?.withOpacity(0.6),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(6); },
              child: Container(
                height: 100,
                color: widget.mainColor?.withOpacity(0.8),
              ),
            ),
            GestureDetector(
              onTap: () { _playSound(7); },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: widget.mainColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
