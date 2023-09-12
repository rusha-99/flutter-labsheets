import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 218, 212),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  bool _hasLaptop = false;
  String _department = 'CS';
  String _username = '';
  String _password = '';
  bool _hasAccommodationRequest = false;
  String _accommodationRequest = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Username',
              prefixIcon: Icon(Icons.face),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              _username = value;
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Password must be at least eight characters long';
              }
              _password = value;
              return null;
            },
          ),
          Row(
            children: <Widget>[
              Text('Do you have a laptop?'),
              Radio<bool>(
                value: true,
                groupValue: _hasLaptop,
                onChanged: (bool? value) {
                  setState(() {
                    _hasLaptop = value!;
                  });
                },
              ),
              Text('Yes'),
              Radio<bool>(
                value: false,
                groupValue: _hasLaptop,
                onChanged: (bool? value) {
                  setState(() {
                    _hasLaptop = value!;
                  });
                },
              ),
              Text('No'),
            ],
          ),
          DropdownButtonFormField<String>(
            value: _department,
            items: <String>['CS', 'IS']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _department = newValue!;
              });
            },
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        'Your username is $_username. You ${_hasLaptop ? "do" : "don't"} have a laptop. You are a $_department student at UCSC')));
              }
            },
            child: Text('Submit'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _formKey.currentState!.reset();
            },
            child: Text('Clear'),
          ),
        ],
      ),
    );
  }
}
