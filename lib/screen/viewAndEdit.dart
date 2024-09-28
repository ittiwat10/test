import 'package:flutter/material.dart';

class viewAndEdit extends StatefulWidget {
  const viewAndEdit({super.key});

  @override
  State<viewAndEdit> createState() => _viewAndEditState();
}

class _viewAndEditState extends State<viewAndEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All plants in the list"),
        backgroundColor: Color.fromARGB(255, 166, 215, 167),
      ),
    );
  }
}
