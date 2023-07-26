// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      email_verified_at: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      avatar: json['avatar'] as String?,
      api_token: json['api_token'] as String?,
      pin: json['pin'] as int?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.email_verified_at?.toIso8601String(),
      'avatar': instance.avatar,
      'api_token': instance.api_token,
      'pin': instance.pin,
    };
