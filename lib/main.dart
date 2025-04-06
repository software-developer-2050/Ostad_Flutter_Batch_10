// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  // Step 1: Calculate average scores and store in a map
  Map<String, double> averageScores = {};
  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double avg = scores.reduce((a, b) => a + b) / scores.length;
    averageScores[name] = double.parse(avg.toStringAsFixed(2));
  }


  // Step 2: Sort the map by values in descending order
  var sortedEntries = averageScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));


  // Step 3: Create a new map from the sorted entries
  Map<String, double> sortedMap = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  print(sortedMap);
}


// void main() {
//   List<Map<String, dynamic>> students = [
//     {"name": "Alice", "scores": [85, 90, 78]},
//     {"name": "Bob", "scores": [88, 76, 95]},
//     {"name": "Charlie", "scores": [90, 92, 85]},
//   ];

//   // Create and sort entries in one go
//   var sortedMap = Map.fromEntries(
//     students
//         .map((student) {
//           var name = student['name'];
//           var scores = student['scores'] as List;
//           var avg = (scores.reduce((a, b) => a + b) / scores.length)
//               .toStringAsFixed(2);
//           return MapEntry(name, double.parse(avg));
//         })
//         .toList()
//           ..sort((a, b) => b.value.compareTo(a.value)),
//   );

//   print(sortedMap);
// }


