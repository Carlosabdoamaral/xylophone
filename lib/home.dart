import 'package:flutter/material.dart';

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
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),

        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: widget.mainColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
            ),
            Container(
              height: 100,
              color: widget.mainColor?.withOpacity(0.8),
            ),
            Container(
              height: 100,
              color: widget.mainColor?.withOpacity(0.6),
            ),
            Container(
              height: 100,
              color: widget.mainColor?.withOpacity(0.4),
            ),
            Container(
              height: 100,
              color: widget.mainColor?.withOpacity(0.6),
            ),
            Container(
              height: 100,
              color: widget.mainColor?.withOpacity(0.8),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: widget.mainColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
