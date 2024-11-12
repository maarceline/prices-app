import 'package:flutter/material.dart';
import 'package:prices_app/pages/find_products_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                  '/Users/marche/Documents/FlutterProjects/prices_app/lib/assets/logo/prices_logo.png'),
            ),
            const Text(
              'Check for the best prices',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    return Colors.white;
                  },
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FindProductsPage(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(),
                child: Text(
                  'Find products',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
