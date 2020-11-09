import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print("Grid button clicked");
              },
              child: Icon(
                Icons.grid_view,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                "SERVICE MANAGER",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Notification button clicked");
              },
              child: Icon(
                Icons.notifications_outlined,
                color: Color(0xffFF8080C5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
