import 'package:flutter/material.dart';

import 'class_category.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                categories[index].name,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(categories[index].date)
                            ],
                          ),
                        ),
                        Text(
                          "HINDI",
                          style: TextStyle(
                              color: Color(0xffb71c1c),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "ENGLISH",
                          style: TextStyle(
                              color: Color(0xffb71c1c),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
