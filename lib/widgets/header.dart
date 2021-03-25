import 'package:flutter/material.dart';
import '../data.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Prashant's Wallet",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  boxShadow: customShadow,
                  color: primaryColor,
                  shape: BoxShape.circle),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: Colors.deepOrange,
                    shape: BoxShape.circle),
                child: Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      boxShadow: customShadow,
                      color: primaryColor,
                      shape: BoxShape.circle),
                  child: Icon(Icons.notifications),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
