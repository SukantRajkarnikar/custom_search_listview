import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Hemlo Search World")),
        body: const AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F9FE),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text("Hello")
        ],
      ),
    );
  }
}

