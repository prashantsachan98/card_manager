import 'package:flutter/material.dart';
import 'package:web/data.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Selected Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
        Expanded(
            child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 1,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: Stack(
                  children: [
                    Positioned.fill(
                      //left: 0,
                      top: 150,
                      bottom: -200,
                      //right: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white38,
                          boxShadow: customShadow,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -100,
                      bottom: -100,
                      //  right: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                            boxShadow: customShadow),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Image.asset('assets/logo.png')),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
