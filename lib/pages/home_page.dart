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
                    Navigator.of(context).pushNamed('/bloc/example/');
                  },
                  width: 150,
                  height: 150,
                ),
                ButtonCard(
                  title: 'Example Freezed',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/bloc/example/freezed');
                  },
                  width: 150,
                  height: 150,
                ),
                ButtonCard(
                  title: 'Contact',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/contacts/list');
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
