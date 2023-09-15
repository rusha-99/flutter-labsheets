void main() {
  // Initialize a list of integers with some duplicate values
  var numbers = [1, 2, 3, 2, 4, 5, 3];

  // Use the remove() method to remove one of the duplicate values
  numbers.remove(2);

  // Use the first and last properties to print the first and last elements
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');
}
