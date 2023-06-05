
import 'package:flutter/material.dart';
import 'package:project_pro/providers/Item_provider.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  const ItemDetails({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(item.imageUrl),
            const SizedBox(height: 16),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}