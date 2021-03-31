import 'package:flutter/material.dart';
import 'package:web/widgets/pieChart.dart';
import '../expenseDetail/expenseDetail.dart';

class Expense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Expenses',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expense
                        .map(
                          (value) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[expense.indexOf(value)],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  value['name'],
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )),
            Expanded(flex: 5, child: PieChart())
          ],
        ),
      ],
    );
  }
}
