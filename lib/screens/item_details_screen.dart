import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  final String id;

  const ItemDetailsScreen({super.key, required this.id});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Text("Details of ${widget.id}"),
      ),
    );
  }
}
