import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
            Text("Search", style: TextStyle(fontSize: 25, color: Colors.grey)),
      ),
    );
  }
}
