import 'package:flutter/material.dart';

class Category2 extends StatefulWidget {
  @override
  _Category2State createState() => _Category2State();
}

class _Category2State extends State<Category2> {
  int _selectedIndex = 0;
  final List<String> categories = [
    'G&SR Correction',
    'Correction Slip',
    'Accident Manual',
    'Operating Manual',
    'Accident Manual'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      color: Color(0xffE2EEE7),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
                print("Selected index : ${categories[index]}");
              });
            },
            child: Padding(
              padding:
                  EdgeInsets.only(left: 1.0, right: 1.0, top: 8.0, bottom: 8.0),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 150,
                decoration: index == _selectedIndex
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white)
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Text(
                    categories[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
