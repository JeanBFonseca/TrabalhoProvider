import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task.dart';
import 'package:to_do/provider/task_provider.dart';
import 'package:to_do/routes.dart';
import 'package:to_do/view/add_task/add_task.dart';
import 'package:to_do/view/task_list/task_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.home,
        routes: {
          AppRoutes.home: (context) => TaskListPage(),
          AppRoutes.add: (context) => AddTaskPage(),
        },
      ),
    );
  }
}