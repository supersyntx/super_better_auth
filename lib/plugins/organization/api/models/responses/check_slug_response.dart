import 'package:json_annotation/json_annotation.dart';

part 'check_slug_response.g.dart';

@JsonSerializable()
class CheckSlugResponse {
  final bool available;

  const CheckSlugResponse({required this.available});

  factory CheckSlugResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckSlugResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckSlugResponseToJson(this);
}
