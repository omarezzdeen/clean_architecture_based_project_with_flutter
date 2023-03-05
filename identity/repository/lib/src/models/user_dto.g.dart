// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO()
  ..status = json['status'] as int?
  ..message = json['message'] as String?
  ..customer = json['customer'] == null
      ? null
      : UserCustomer.fromJson(json['customer'] as Map<String, dynamic>)
  ..contacts = json['contacts'] == null
      ? null
      : UserContacts.fromJson(json['contacts'] as Map<String, dynamic>);

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'customer': instance.customer,
      'contacts': instance.contacts,
    };

UserCustomer _$UserCustomerFromJson(Map<String, dynamic> json) => UserCustomer()
  ..id = json['id'] as int?
  ..name = json['name'] as String?
  ..numberOfNotification = json['numberOfNotification'] as int?;

Map<String, dynamic> _$UserCustomerToJson(UserCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numberOfNotification': instance.numberOfNotification,
    };

UserContacts _$UserContactsFromJson(Map<String, dynamic> json) => UserContacts()
  ..phone = json['phone'] as String?
  ..email = json['email'] as String?
  ..link = json['link'] as String?;

Map<String, dynamic> _$UserContactsToJson(UserContacts instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'link': instance.link,
    };
