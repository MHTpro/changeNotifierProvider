import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/notifier.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Use CNP befor MaterialApp
    return ChangeNotifierProvider<MyProvider>(
      //get my data
      create: (context) => MyProvider(
        name: "-----",
      ),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
