import 'dart:io';

void main() {
  // Initialize an empty map to store word translations
  var dictionary = <String, String>{
    'hello': 'hola',
    'goodbye': 'adios',
    'please': 'por favor',
  };

  while (true) {
    print('Enter an English word (or "exit" to quit):');

    // Prompt the user to enter an English word
    String userInput = stdin.readLineSync()?.trim()?.toLowerCase() ?? '';

    // Exit the program if the user enters 'exit'
    if (userInput == 'exit') {
      break;
    }

    // Check if the input word exists in the dictionary
    if (dictionary.containsKey(userInput)) {
      // Print the Spanish translation
      print('The Spanish translation is: ${dictionary[userInput]}');
    } else {
      // Indicate that the word is not found
      print('Word not found in the dictionary.');
    }
  }
}
