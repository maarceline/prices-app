import 'package:flutter/material.dart';
import 'package:prices_app/components/my_textfield.dart';
import 'package:prices_app/pages/results_page.dart';

class FindProductsPage extends StatelessWidget {
  final TextEditingController itemController = TextEditingController();
  FindProductsPage({super.key});

  void goResultsPage(context) {
    if (itemController.text.isNotEmpty) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ResultsPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Best Price'),
        actions: [
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: MyTextfield(
                        hintText: 'Find your item',
                        controller: itemController,
                      ),
                    ),
                    const SizedBox(width: 15),
                    IconButton(
                      onPressed: () => goResultsPage(context),
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            '/Users/marche/Documents/FlutterProjects/prices_app/lib/assets/logo/find.png',
          ),
        ],
      ),
    );
  }
}
