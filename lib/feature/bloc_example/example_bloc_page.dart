import 'package:contact_bloc/feature/bloc_example/bloc_estrutura_example/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleBlocPage extends StatelessWidget {
  const ExampleBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example Page'),
      ),
      // BlocLister é responsável em escutar as alterações.
      body: BlocListener<ExampleBloc, ExampleState>(
        // ListenWhen tem a responsabilidade adicionar regra para o listener
        // executar ou não dependendo da condição configurada dentro do listenWhen.
        listenWhen: (previous, current) {
          if (previous is ExampleStateInitial && current is ExampleStateData) {
            return current.names.length > 4;
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('A quantidade de nomes é ${state.names.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              // BuildWhen tem a responsabilidade adicionar regra para o builder
              // executar ou não dependendo da condição configurada dentro do buildWhen.
              buildWhen: (previous, current) {
                if (previous is ExampleStateInitial &&
                    current is ExampleStateData) {
                  return current.names.length > 4;
                }
                return false;
              },
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Text('Total de nomes é ${state.names.length}');
                }
                return const SizedBox.shrink();
              },
              listener: (context, state) {
                debugPrint('Estado alterado para ${state.runtimeType}');
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleStateInitial) {
                  return true;
                }

                return false;
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
            const SizedBox(
              height: 5,
            ),
            // Usar esse BlocSelector pra listView ou o BlocBuilder.
            BlocSelector<ExampleBloc, ExampleState, List<String>>(
              selector: (state) {
                if (state is ExampleStateData) {
                  return state.names;
                }

                return [];
              },
              builder: (context, names) {
                // Para caso de um ListView dentro de uma colum é preciso usar o
                // widget Expanded para funcionar o scroll do ListView.
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
                              .read<ExampleBloc>()
                              .add(ExampleRemoveNameEvent(name: name));
                        },
                        title: Text(name),
                      );
                    },
                  ),
                );
              },
            ),
            /*BlocBuilder<ExampleBloc, ExampleState>(
              builder: (context, state) {
                if (state is ExampleStateData) {
                  if (state.names.isNotEmpty) {
                    return ListView.builder(
                      // Quando tem ListView dentro de uma colum, é necessário essa propriedade para reconhecer
                      // e montar os elementos.
                      shrinkWrap: true,
                      itemCount: state.names.length,
                      itemBuilder: (context, index) {
                        final name = state.names[index];
                        return ListTile(
                          title: Text(name),
                        );
                      },
                    );
                  } else {
                    return const Expanded(
                      child: Center(
                        child: Text('Nenhum nome cadastrado.'),
                      ),
                    );
                  }
                }

                return const SizedBox.shrink();
              },
            ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        onPressed: () {
          const name = 'Victor Teste';
          context.read<ExampleBloc>().add(ExampleAddNameEvent(name: name));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
