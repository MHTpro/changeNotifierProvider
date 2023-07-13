import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //get data from provider
    final data = context.watch<MyProvider>();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40.0,
                width: 300.0,
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Enter Number",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //when you submitted on your keyboard, the name will change in UI
                  onSubmitted: (value) {
                    //use my data from provider
                    data.changeName(nameController.text);
                  },
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Text(
                "Name: ${nameController.text}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
