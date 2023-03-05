import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {

	int? status;
	String? message;
	UserCustomer? customer;
	UserContacts? contacts;
  
  UserDTO();

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);

  UserDTO copyWith({int? status, String? message, UserCustomer? customer, UserContacts? contacts}) {
      return UserDTO()..status= status ?? this.status
			..message= message ?? this.message
			..customer= customer ?? this.customer
			..contacts= contacts ?? this.contacts;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserCustomer {

	int? id;
	String? name;
	int? numberOfNotification;
  
  UserCustomer();

  factory UserCustomer.fromJson(Map<String, dynamic> json) => _$UserCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$UserCustomerToJson(this);

  UserCustomer copyWith({int? id, String? name, int? numberOfNotifcation}) {
      return UserCustomer()..id= id ?? this.id
			..name= name ?? this.name
			..numberOfNotification= numberOfNotifcation ?? numberOfNotification;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserContacts {

	String? phone;
	String? email;
	String? link;
  
  UserContacts();

  factory UserContacts.fromJson(Map<String, dynamic> json) => _$UserContactsFromJson(json);

  Map<String, dynamic> toJson() => _$UserContactsToJson(this);

  UserContacts copyWith({String? phone, String? email, String? link}) {
      return UserContacts()..phone= phone ?? this.phone
			..email= email ?? this.email
			..link= link ?? this.link;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}