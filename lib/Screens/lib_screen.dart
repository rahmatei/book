import 'package:flutter/material.dart';

class LibScreen extends StatefulWidget {
  const LibScreen({super.key});

  @override
  State<LibScreen> createState() => _LibScreenState();
}

class _LibScreenState extends State<LibScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('LibScreen')),);
  }
}