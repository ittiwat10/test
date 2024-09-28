import 'package:flutter/material.dart';

class addNewPlant extends StatefulWidget {
  const addNewPlant({super.key});

  @override
  State<addNewPlant> createState() => _addNewPlantState();
}

class _addNewPlantState extends State<addNewPlant> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Add New Plant",
            style: TextStyle(fontSize: 25, color: Colors.grey)),
      ),
    );
  }
}
