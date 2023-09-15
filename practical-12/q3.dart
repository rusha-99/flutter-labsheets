void main() {
  // Initialize an empty list to store integers
  var numbers = <int>[];

  // Add the numbers 1 to 5 to the list using a loop
  for (var i = 1; i <= 5; i++) {
    numbers.add(i);
  }

  // Use the length property to find the number of elements in the list
  var length = numbers.length;

  // Print the list and its length
  print('List: $numbers');
  print('Length: $length');
}
