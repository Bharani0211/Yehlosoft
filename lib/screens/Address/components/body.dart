import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> address = [];

  String _address = '';

  void addAddress(String liaddress) {
    address.add(liaddress);
    print(address);
  }

  void _showAlertDialog() {
    AlertDialog dialog = new AlertDialog(
      content: TextField(
        decoration: InputDecoration(
            focusColor: Colors.white,
            border: OutlineInputBorder(),
            labelText: 'Enter the address',
            fillColor: Colors.white),
        onChanged: (value) {
          _address = value;
        },
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              addAddress(_address);
              Navigator.pop(context);
            });
          },
          child: Text("Add"),
        ),
      ],
    );
    showDialog(context: context, child: dialog);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 8.0),
          child: Text(
            "ADDRESSES",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            width: size.width,
            color: Colors.black,
            child: address.length > 0
                ? ListView.builder(
                    itemCount: address.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: size.width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              address[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "CLICK THE ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "ADD ",
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          "BUTTON TO ADD THE ADDRESS ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 280.0, bottom: 40),
          child: FloatingActionButton(
            elevation: 10,
            backgroundColor: Colors.yellow,
            onPressed: () {
              _showAlertDialog();
            },
            child: Text(
              "Add",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
