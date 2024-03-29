import 'package:flutter/material.dart';
import 'package:todo_week1/pages/edit_item_pages.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                actions: [
                  IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EditItemPage(),
                        ));
                      })
                ],
                title: const Text('Task',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
            body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.tertiary)),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.red.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.map),
                          ),
                          const SizedBox(width: 15),
                          Text('Group',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text('Notes',
                          style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 50),
                      ElevatedButton.icon(
                        icon: Icon(Icons.check,
                            color: Theme.of(context).colorScheme.secondary),
                        label: Text('Mark as done!',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ]))));
  }
}
