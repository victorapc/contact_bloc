import 'package:contact_bloc/core/widget/loader.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/list/contact_bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts Page'),
      ),
      body: BlocListener<ContactListBloc, ContactListState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (error) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Loader<ContactListBloc, ContactListState>(
                    selector: (state) {
                      return state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                    },
                  ),
                  BlocSelector<ContactListBloc, ContactListState,
                      List<ContactModel>>(
                    selector: (state) {
                      return state.maybeWhen(
                        data: (contacts) => contacts,
                        orElse: () => [],
                      );
                    },
                    builder: (_, contacts) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          final contact = contacts[index];
                          return ListTile(
                            title: Text(contact.name),
                            subtitle: Text(contact.email),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
