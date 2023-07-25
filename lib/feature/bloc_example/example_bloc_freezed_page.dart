import 'package:contact_bloc/feature/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleBlocFreezedPage extends StatelessWidget {
  const ExampleBlocFreezedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Freezed'),
      ),
      body: BlocListener<ExampleFreezedBloc, ExampleFreezedState>(
        listener: (context, state) {
          state.whenOrNull(
            showBanner: (_, message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
          );
        },
        child: Column(
          children: [
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, bool>(
              selector: (state) {
                return state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
              },
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, List<String>>(
              selector: (state) {
                return state.maybeWhen(
                  data: (names) => names,
                  // Caso for incluir um usuário novo, deverá adicionar o showBanner
                  // para recuperar os nomes da lista, sem apagar os dados da tela
                  // para dar impressão que não perdeu nenhum dado ao simular uma
                  // inserção de dados.
                  showBanner: (names, _) => names,
                  orElse: () => [],
                );
              },
              builder: (_, names) {
                return Expanded(
                  child: ListView.builder(
                    // Quando tem ListView dentro de uma colum, é necessário essa propriedade para reconhecer
                    // e montar os elementos.
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final name = names[index];
                      return ListTile(
                        onTap: () {
                          context
                              .read<ExampleFreezedBloc>()
                              .add(ExampleFreezedEvent.removeName(name));
                        },
                        title: Text(name),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        onPressed: () {
          const name = 'Victor Teste';
          context
              .read<ExampleFreezedBloc>()
              .add(const ExampleFreezedEvent.addName(name));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
