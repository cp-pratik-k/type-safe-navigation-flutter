import 'package:flutter/material.dart';
import '../navigation/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              ItemDetailsRoute(id: "$index").push(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text('Item $index'),
            ),
          ),
        ));
  }
}
