import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todowee/models/task_data.dart';
import 'package:todowee/screens/taskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
