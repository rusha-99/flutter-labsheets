import 'dart:async';

Future<String> fetchDataFromSourceA() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data from Source A';
}

Future<String> fetchDataFromSourceB() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Data from Source B';
}

void main() async {
  print('Fetching data...');

  // Fetch data from both sources in parallel
  Future<String> futureA = fetchDataFromSourceA();
  Future<String> futureB = fetchDataFromSourceB();

  // Wait for both futures to complete
  String dataA = await futureA;
  String dataB = await futureB;

  print('Data received from Source A: $dataA');
  print('Data received from Source B: $dataB');
}
