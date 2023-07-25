import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  Future<List<ContactModel>> findAll() async {
    final response = await Dio().get('http://192.168.0.108:8080/contacts');

    return response.data
        ?.map<ContactModel>((contact) => ContactModel.fromMap(contact))
        .toList();
  }

  // Com formato de seta da função nesse caso não precisa do async e await
  Future<void> create(ContactModel model) =>
      Dio().post('http://192.168.0.108:8080/contacts', data: model.toMap());

  Future<void> update(ContactModel model) =>
      Dio().put('http://192.168.0.108:8080/contacts/${model.id}',
          data: model.toMap());

  Future<void> delete(ContactModel model) =>
      Dio().delete('http://192.168.0.108:8080/contacts/${model.id}');
}
