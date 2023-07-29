import 'package:contact_bloc/core/widget/loader.dart';
import 'package:contact_bloc/feature/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/contact_model.dart';

class ContactsListCubitPage extends StatelessWidget {
  const ContactsListCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Cubit'),
      ),
      body: RefreshIndicator(
        onRefresh: () => context.read<ContactListCubit>().findAll(),
        child: Column(
          children: [
            Loader<ContactListCubit, ContactListCubitState>(
              selector: (state) {
                return state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
              },
            ),
            BlocSelector<ContactListCubit, ContactListCubitState,
                List<ContactModel>>(
              selector: (state) {
                return state.maybeWhen(
                  data: (contacts) => contacts,
                  orElse: () => <ContactModel>[],
                );
              },
              builder: (_, contacts) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: contacts.length,
                    itemBuilder: (_, index) {
                      final contact = contacts[index];

                      return ListTile(
                        onLongPress: () =>
                            context.read<ContactListCubit>().delete(contact),
                        title: Text(contact.name),
                        subtitle: Text(contact.email),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
