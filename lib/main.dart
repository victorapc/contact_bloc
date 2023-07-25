import 'package:contact_bloc/feature/bloc_example/bloc_estrutura_example/example_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/feature/bloc_example/example_bloc_freezed_page.dart';
import 'package:contact_bloc/feature/bloc_example/example_bloc_page.dart';
import 'package:contact_bloc/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      routes: {
        '/home': (_) => const HomePage(),
        '/bloc/example/': (_) => BlocProvider(
              create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
              child: const ExampleBlocPage(),
            ),
        '/bloc/example/freezed': (context) => BlocProvider(
              create: (context) => ExampleFreezedBloc()
                ..add(const ExampleFreezedEvent.findNames()),
              child: const ExampleBlocFreezedPage(),
            ),
        '/contacts/list': (context) => const ContactsListPage(),
      },
    );
  }
}
