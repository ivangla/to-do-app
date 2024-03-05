import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => TaskTileState();
}

class TaskTileState extends State<TaskTile> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (val) {
          setState(() {
            _value = !_value;
          });
        },
        value: _value,
      ),
      title: const Text("Título de la tarea"),
    );
  }
}
