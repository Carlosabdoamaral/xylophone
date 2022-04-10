import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:xylophone/home.dart';

class SelectThemePage extends StatefulWidget {
  const SelectThemePage({Key? key}) : super(key: key);

  @override
  State<SelectThemePage> createState() => _SelectThemePageState();
}

class _SelectThemePageState extends State<SelectThemePage> {
  int pallete = 0;

  Color? _mainColor = Color.fromRGBO(16, 44, 122, 1);
  String _colorName = "";

  Color? _rainbowColor = Colors.pink;
  Color? _rainbowCheck = Colors.black26;
  bool _rainbowIsChecked = false;

  Color? _forestColor = Colors.green;
  Color? _forestCheck = Colors.black26;
  bool _forestIsChecked = false;

  Color? _oceanColor = Colors.blueAccent;
  Color? _oceanCheck = Colors.black26;
  bool _oceanIsChecked = false;

  Color? _vintageColor = Colors.orangeAccent;
  Color? _vintageCheck = Colors.black26;
  bool _vintageIsChecked = false;

  @override
  Widget build(BuildContext context) {
    void _selectPalette(int i) {
      // 0 = Rainbow
      // 1 = Forest
      // 2 = Ocean
      // 3 = Vintage

      if (i == 0) {
        setState(() {
          _mainColor = _rainbowColor;

          _rainbowIsChecked = true;
          _rainbowCheck = _rainbowColor;

          _forestIsChecked = false;
          _forestCheck = Colors.black26;

          _oceanIsChecked = false;
          _oceanCheck = Colors.black26;

          _vintageIsChecked = false;
          _vintageCheck = Colors.black26;
        });
      } else if (i == 1) {
        setState(() {
          _mainColor = _forestColor;

          _rainbowIsChecked = false;
          _rainbowCheck = Colors.black26;

          _forestIsChecked = true;
          _forestCheck = _forestColor;

          _oceanIsChecked = false;
          _oceanCheck = Colors.black26;

          _vintageIsChecked = false;
          _vintageCheck = Colors.black26;
        });
      } else if (i == 2) {
        setState(() {
          _mainColor = _oceanColor;

          _rainbowIsChecked = false;
          _rainbowCheck = Colors.black26;

          _forestIsChecked = false;
          _forestCheck = Colors.black26;

          _oceanIsChecked = true;
          _oceanCheck = _oceanColor;

          _vintageIsChecked = false;
          _vintageCheck = Colors.black26;
        });
      } else if (i == 3) {
        setState(() {
          _mainColor = _vintageColor;

          _rainbowIsChecked = false;
          _rainbowCheck = Colors.black26;

          _forestIsChecked = false;
          _forestCheck = Colors.black26;

          _oceanIsChecked = false;
          _oceanCheck = Colors.black26;

          _vintageIsChecked = true;
          _vintageCheck = _vintageColor;
        });
      }
    }

    void _getStarted() {

      if (_rainbowIsChecked) {
        setState(() {
          _colorName = "Rainbow";
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              mainColor: _mainColor,
              colorName: _colorName,
            ),
          ),
        );
      }
      else if (_forestIsChecked) {
        setState(() {
          _colorName = "Forest";
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              mainColor: _mainColor,
              colorName: _colorName,
            ),
          ),
        );
      }
      else if (_oceanIsChecked) {
        setState(() {
          _colorName = "Ocean";
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              mainColor: _mainColor,
              colorName: _colorName,
            ),
          ),
        );
      }
      else if (_vintageIsChecked) {
        setState(() {
          _colorName = "Vintage";
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              mainColor: _mainColor,
              colorName: _colorName,
            ),
          ),
        );
      }
      else {
        final snackBar = SnackBar(
          content: const Text('You must select one pallete'),
          action: SnackBarAction(
            label: 'Close',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // TITLE
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Select your pallete",
                    style: TextStyle(
                      fontFamily: 'Poppins Regular',
                      fontSize: 30,
                      color: _mainColor,
                    ),
                  ),
                  Text(
                    "You can select only one",
                    style: TextStyle(
                      fontFamily: 'Poppins Regular',
                      fontSize: 13,
                      color: Color.fromRGBO(126, 126, 126, 1.0),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    height: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromRGBO(126, 126, 126, 0.5),
                    ),
                  ),
                ],
              ),
            ),

            // OPTIONS
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _selectPalette(0);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(126, 126, 126, 0.3),
                    ),
                    child: Row(
                      children: [
                        // ICON
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: _rainbowColor),
                          child: Icon(
                            Icons.looks,
                            color: Colors.white,
                          ),
                        ),

                        // TITLE
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Rainbow",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'Poppins Regular'),
                          ),
                        ),

                        Spacer(),

                        // IS CHECKED
                        Icon(
                          Icons.check,
                          color: _rainbowCheck,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _selectPalette(1);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(126, 126, 126, 0.3),
                    ),
                    child: Row(
                      children: [
                        // ICON
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: _forestColor),
                          child: Icon(
                            Icons.forest,
                            color: Colors.white,
                          ),
                        ),

                        // TITLE
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Forest",
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Poppins Regular'),
                          ),
                        ),

                        Spacer(),

                        // IS CHECKED
                        Icon(
                          Icons.check,
                          color: _forestCheck,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _selectPalette(2);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(126, 126, 126, 0.3),
                    ),
                    child: Row(
                      children: [
                        // ICON
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: _oceanColor),
                          child: Icon(
                            Icons.waves,
                            color: Colors.white,
                          ),
                        ),

                        // TITLE
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Ocean",
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Poppins Regular'),
                          ),
                        ),

                        Spacer(),

                        // IS CHECKED
                        Icon(
                          Icons.check,
                          color: _oceanCheck,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _selectPalette(3);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(126, 126, 126, 0.3),
                    ),
                    child: Row(
                      children: [
                        // ICON
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: _vintageColor),
                          child: Icon(
                            Icons.theaters,
                            color: Colors.white,
                          ),
                        ),

                        // TITLE
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Vintage",
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Poppins Regular'),
                          ),
                        ),

                        Spacer(),

                        // IS CHECKED
                        Icon(
                          Icons.check,
                          color: _vintageCheck,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Spacer(),

            // BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: _mainColor,
              ),
              child: FloatingActionButton(
                backgroundColor: Colors.transparent,
                elevation: 0,
                onPressed: () {
                  _getStarted();
                },
                child: Text(
                  "Get started",
                  style: TextStyle(
                    fontFamily: 'Poppins Regular',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
