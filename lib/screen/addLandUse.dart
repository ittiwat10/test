import 'package:flutter/material.dart';

class AddlandUse extends StatefulWidget {
  const AddlandUse({super.key});

  @override
  State<AddlandUse> createState() => _AddlandUseState();
}

class _AddlandUseState extends State<AddlandUse> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Add Land Use",
            style: TextStyle(fontSize: 25, color: Colors.grey)),
      ),
    );
  }
}
