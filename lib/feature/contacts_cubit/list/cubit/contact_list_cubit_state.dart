part of 'contact_list_cubit.dart';

@freezed
class ContactListCubitState with _$ContactListCubitState {
  factory ContactListCubitState.initial() = _ContactListCubitStateInitial;
  factory ContactListCubitState.loading() = _ContactListCubitStateLoading;
  factory ContactListCubitState.data({required List<ContactModel> contacts}) =
      _ContactListCubitStateData;
  factory ContactListCubitState.error({required String error}) =
      _ContactListCubitStateError;
}
