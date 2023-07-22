import 'package:contact_bloc/core/widget/button_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                ButtonCard(
                  title: 'Example',
                  onPressed: () {
                    debugPrint('Example');
                  },
                  width: 150,
                  height: 150,
                ),
                ButtonCard(
                  title: 'Example Freezed',
                  onPressed: () {
                    debugPrint('Example Freezed');
                  },
                  width: 150,
                  height: 150,
                ),
                ButtonCard(
                  title: 'Contact',
                  onPressed: () {
                    debugPrint('Contact');
                  },
                  width: 150,
                  height: 150,
                ),
                ButtonCard(
                  title: 'Contact Cubit',
                  onPressed: () {
                    debugPrint('Contact Cubit');
                  },
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
