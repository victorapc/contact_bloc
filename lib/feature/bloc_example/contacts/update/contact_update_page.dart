import 'package:contact_bloc/core/widget/loader.dart';
import 'package:contact_bloc/feature/bloc_example/contacts/update/contact_bloc/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUpdatePage extends StatefulWidget {
  final ContactModel contact;

  const ContactUpdatePage({super.key, required this.contact});

  @override
  State<ContactUpdatePage> createState() => _ContactUpdatePageState();
}

class _ContactUpdatePageState extends State<ContactUpdatePage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameEC;
  late final TextEditingController _emailEC;

  @override
  void initState() {
    super.initState();
    _nameEC = TextEditingController(text: widget.contact.name);
    _emailEC = TextEditingController(text: widget.contact.email);
  }

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualizando Contato'),
      ),
      body: BlocListener<ContactUpdateBloc, ContactUpdateState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            success: () => true,
            error: (_) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            success: () => Navigator.of(context).pop(),
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    message,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameEC,
                  decoration: const InputDecoration(
                    label: Text('Nome'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome Obrigatório para cadastro.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailEC,
                  decoration: const InputDecoration(
                    label: Text('E-mail'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'E-Mail Obrigatório para cadastro.';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    final validate = _formKey.currentState?.validate() ?? false;
                    if (validate) {
                      context.read<ContactUpdateBloc>().add(
                            ContactUpdateEvent.save(
                              id: widget.contact.id!,
                              name: _nameEC.text,
                              email: _emailEC.text,
                            ),
                          );
                    }
                  },
                  child: const Text(
                    'Salvar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Loader<ContactUpdateBloc, ContactUpdateState>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
