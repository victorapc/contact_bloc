import 'package:contact_bloc/feature/bloc_example/bloc_estrutura_example/example_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/list/contact_bloc/contact_list_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/register/contact_bloc/contact_register_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/update/contact_bloc/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/feature/bloc_example/example_bloc_freezed_page.dart';
import 'package:contact_bloc/feature/bloc_example/example_bloc_page.dart';
import 'package:contact_bloc/feature/contacts_cubit/list/contacts_list_cubit_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/pages/home_page.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/contacts_cubit/list/cubit/contact_list_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
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
          '/contacts/list': (context) => BlocProvider(
                create: (_) => ContactListBloc(
                    // No caso do context.read pode tirar caso queria <ContactsRepository>
                    // Pois todo esse bloco esta dentro de um RepositoryProvider.
                    repository: context.read<ContactsRepository>())
                  ..add(const ContactListEvent.findAll()),
                child: const ContactsListPage(),
              ),
          '/contacts/register': (context) => BlocProvider(
                create: (context) =>
                    ContactRegisterBloc(contactsRepository: context.read()),
                child: const ContactRegisterPage(),
              ),
          '/contacts/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) =>
                  ContactUpdateBloc(contactsRepository: context.read()),
              child: ContactUpdatePage(
                contact: contact,
              ),
            );
          },
          '/contacts/cubit/list': (context) {
            return BlocProvider(
              create: (context) =>
                  ContactListCubit(repository: context.read())..findAll(),
              child: const ContactsListCubitPage(),
            );
          },
        },
      ),
    );
  }
}
