// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoreSettings _$CoreSettingsFromJson(Map<String, dynamic> json) {
  return _CoreSettings.fromJson(json);
}

/// @nodoc
mixin _$CoreSettings {
  String get userName => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get githubUserName => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoreSettingsCopyWith<CoreSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreSettingsCopyWith<$Res> {
  factory $CoreSettingsCopyWith(
          CoreSettings value, $Res Function(CoreSettings) then) =
      _$CoreSettingsCopyWithImpl<$Res, CoreSettings>;
  @useResult
  $Res call(
      {String userName,
      String introduction,
      String email,
      String githubUserName,
      String? profileImageUrl});
}

/// @nodoc
class _$CoreSettingsCopyWithImpl<$Res, $Val extends CoreSettings>
    implements $CoreSettingsCopyWith<$Res> {
  _$CoreSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? introduction = null,
    Object? email = null,
    Object? githubUserName = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoreSettingsImplCopyWith<$Res>
    implements $CoreSettingsCopyWith<$Res> {
  factory _$$CoreSettingsImplCopyWith(
          _$CoreSettingsImpl value, $Res Function(_$CoreSettingsImpl) then) =
      __$$CoreSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String introduction,
      String email,
      String githubUserName,
      String? profileImageUrl});
}

/// @nodoc
class __$$CoreSettingsImplCopyWithImpl<$Res>
    extends _$CoreSettingsCopyWithImpl<$Res, _$CoreSettingsImpl>
    implements _$$CoreSettingsImplCopyWith<$Res> {
  __$$CoreSettingsImplCopyWithImpl(
      _$CoreSettingsImpl _value, $Res Function(_$CoreSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? introduction = null,
    Object? email = null,
    Object? githubUserName = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_$CoreSettingsImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreSettingsImpl implements _CoreSettings {
  _$CoreSettingsImpl(
      {this.userName = "user name",
      this.introduction = "introduction",
      this.email = "email",
      this.githubUserName = "github user name",
      this.profileImageUrl = null});

  factory _$CoreSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoreSettingsImplFromJson(json);

  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String introduction;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String githubUserName;
  @override
  @JsonKey()
  final String? profileImageUrl;

  @override
  String toString() {
    return 'CoreSettings(userName: $userName, introduction: $introduction, email: $email, githubUserName: $githubUserName, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreSettingsImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.githubUserName, githubUserName) ||
                other.githubUserName == githubUserName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, introduction, email,
      githubUserName, profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreSettingsImplCopyWith<_$CoreSettingsImpl> get copyWith =>
      __$$CoreSettingsImplCopyWithImpl<_$CoreSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreSettingsImplToJson(
      this,
    );
  }
}

abstract class _CoreSettings implements CoreSettings {
  factory _CoreSettings(
      {final String userName,
      final String introduction,
      final String email,
      final String githubUserName,
      final String? profileImageUrl}) = _$CoreSettingsImpl;

  factory _CoreSettings.fromJson(Map<String, dynamic> json) =
      _$CoreSettingsImpl.fromJson;

  @override
  String get userName;
  @override
  String get introduction;
  @override
  String get email;
  @override
  String get githubUserName;
  @override
  String? get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CoreSettingsImplCopyWith<_$CoreSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
