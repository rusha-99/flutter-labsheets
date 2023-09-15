void main() {
  // Define a map to represent a student's grades
  var grades = <String, String>{};

  // Add subjects and their grades to the map
  grades['Math'] = 'A';
  grades['Science'] = 'B+';
  grades['English'] = 'A-';

  // Print out the student's grades for all subjects
  grades.forEach((subject, grade) {
    print('$subject: $grade');
  });
}
