double calculateArea() {
  // Declare late variables for length and width
  late double length;
  late double width;

  // Initialize the length and width
  length = 10.0; 
  width = 5.0;
  // Calculate and return the area
  return length * width;
}

void main() {
  print('The area of the rectangle is: ${calculateArea()}');
}
