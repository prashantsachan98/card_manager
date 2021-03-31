import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web/expenseDetail/expenseDetail.dart';

import '../data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double total = 0;
    expense.forEach((element) {
      total += element['amount'];
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            boxShadow: customShadow,
            color: primaryColor,
            shape: BoxShape.circle),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomPaint(
                  child: Container(), foregroundPainter: PieChartPainter()),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: primaryColor,
                    shape: BoxShape.circle),
                child: Center(
                    child: Text(total.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset centre = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    double total = 0;
    expense.forEach((element) {
      total += element['amount'];
    });
    var startRadian = -pi / 2;
    for (int i = 0; i < expense.length; i++) {
      var currentExpense = expense[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: centre, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
