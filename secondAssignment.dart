<<<<<<< HEAD
/*
মডিউল ২ এর এসাইনমেন্ট
You are given a list of integers representing the grades obtained by a student in
various subjects: [85, 92, 78, 65, 88, 72].
Write a Dart program to calculate the average grade of the student. After calculating
the average, round it to the nearest integer. Determine if the student's average grade
is greater than or equal to 70 print Passed. Print Failed otherwise
*/

void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];

  // calculate the sum of grades
  int sum=0;
  for(int grade in grades){
    sum+=grade;
  }

  // calculate the average of grades
  double averageGrade= sum/grades.length;
  print("Student's average grade: $averageGrade");

  // Round the average grade to the nearest integer
  int roundAverageGrade = averageGrade.round();
  print("Rounded average: $roundAverageGrade");

  // Pass or Fail check
  if (roundAverageGrade >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }

}
=======
/*
মডিউল ২ এর এসাইনমেন্ট
You are given a list of integers representing the grades obtained by a student in
various subjects: [85, 92, 78, 65, 88, 72].
Write a Dart program to calculate the average grade of the student. After calculating
the average, round it to the nearest integer. Determine if the student's average grade
is greater than or equal to 70 print Passed. Print Failed otherwise
*/

void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];

  // calculate the sum of grades
  int sum=0;
  for(int grade in grades){
    sum+=grade;
  }

  // calculate the average of grades
  double averageGrade= sum/grades.length;
  print("Student's average grade: $averageGrade");

  // Round the average grade to the nearest integer
  int roundAverageGrade = averageGrade.round();
  print("Rounded average: $roundAverageGrade");

  // Pass or Fail check
  if (roundAverageGrade >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }

}
>>>>>>> 17bf0891987d0300c10240ffd2d8b7469877c4ca
