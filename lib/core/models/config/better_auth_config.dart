import 'package:freezed_annotation/freezed_annotation.dart';

part 'better_auth_config.freezed.dart';
part 'better_auth_config.g.dart';

@freezed
abstract class BetterAuthConfig with _$BetterAuthConfig {
  const factory BetterAuthConfig({
    required String scheme,
    required String baseUrl,
    @Default("better_auth") String storagePrefix,
}) = _BetterAuthConfig;

  factory BetterAuthConfig.fromJson(Map<String, dynamic> json) =>
      _$BetterAuthConfigFromJson(json);
}
