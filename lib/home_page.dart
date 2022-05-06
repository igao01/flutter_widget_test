import 'package:flutter/material.dart';
import 'package:widget_test_introduction/child_home_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  final String message;

  const HomePage({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(children: [
        Text(message),
        const Expanded(
          child: ChildHomePage(letters: ['x', 'y', 'z']),
        ),
      ]),
    );
  }
}
