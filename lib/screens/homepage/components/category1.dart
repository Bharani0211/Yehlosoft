import 'package:flutter/material.dart';

class Category1 extends StatefulWidget {
  @override
  _Category1State createState() => _Category1State();
}

class _Category1State extends State<Category1> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 48,
      width: size.width,
      color: Color(0xff9e9e9e),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                    print("SELECTED INDEX : $_selectedIndex");
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 150,
                  decoration: _selectedIndex == 0
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white)
                      : null,
                  child: Text(
                    "DEPARTMENT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 1;
                print("SELECTED INDEX : $_selectedIndex");
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 80,
              decoration: _selectedIndex == 1
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)
                  : null,
              child: Text(
                "PW1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
