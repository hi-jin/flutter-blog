// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoreSettingsImpl _$$CoreSettingsImplFromJson(Map<String, dynamic> json) =>
    _$CoreSettingsImpl(
      userName: json['userName'] as String? ?? "user name",
      introduction: json['introduction'] as String? ?? "introduction",
      email: json['email'] as String? ?? "email",
      githubUserName: json['githubUserName'] as String? ?? "github user name",
      profileImageUrl: json['profileImageUrl'] as String? ?? null,
    );

Map<String, dynamic> _$$CoreSettingsImplToJson(_$CoreSettingsImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'introduction': instance.introduction,
      'email': instance.email,
      'githubUserName': instance.githubUserName,
      'profileImageUrl': instance.profileImageUrl,
    };
