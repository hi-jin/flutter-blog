import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_settings.freezed.dart';
part 'core_settings.g.dart';

@freezed
class CoreSettings with _$CoreSettings {
  factory CoreSettings({
    @Default("user name") String userName,
    @Default("introduction") String introduction,
    @Default("email") String email,
    @Default("github user name") String githubUserName,
    @Default(null) String? profileImageUrl,
  }) = _CoreSettings;

  factory CoreSettings.fromJson(Map<String, dynamic> json) => _$CoreSettingsFromJson(json);
}
