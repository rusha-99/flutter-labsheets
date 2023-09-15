void main() {
  // Declare variables for the book's details
  String title = 'The Great Gatsby'; // replace with actual title
  String? author = 'F. Scott Fitzgerald'; // replace with actual author or null
  int publicationYear = 1925; // replace with actual publication year
  double price = 10.99; // replace with actual price

  // Print the book's details
  print('Title: $title');
  print('Author: ${author ?? 'Unknown'}');
  print('Publication Year: $publicationYear');
  print('Price: \$${price.toStringAsFixed(2)}');
}
