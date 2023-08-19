part of 'user.dart';

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{ 
      'name': instance.name,
      'id': instance.id,
    };