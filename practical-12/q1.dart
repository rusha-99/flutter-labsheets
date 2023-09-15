// Define the Student class
class Student {
  final String name;
  final int age;
  final int id;

  // Constructor with named parameters
  Student({
    required this.name, // 'required' enforces non-nullability
    required this.age,
    required this.id,
  });
}

void main() {
  // Instantiate a Student object
  var student = Student(name: 'Tharusha Pathirana', age: 24, id: 20001258);

  // Print the student details
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('ID: ${student.id}');
}
