import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({super.key, required this.summaryData});
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Container(

                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              data['user_answer'] == data['correct_answer']
                                  ? Colors.green.withOpacity(0.5)
                                  : Colors.red.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text(
                              data['question'] as String,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              data['correct_answer'] as String,
                              style: TextStyle(color: Colors.green),
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 190, 87, 208),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
