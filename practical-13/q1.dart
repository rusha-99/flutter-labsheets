import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Fetched Data';
}

void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print('Data received: $data');
}
