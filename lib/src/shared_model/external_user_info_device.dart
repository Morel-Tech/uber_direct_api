import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'external_user_info_device.g.dart';

@JsonSerializable()
class ExternalUserInfoDevice extends Equatable {
  const ExternalUserInfoDevice({
    this.id,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ExternalUserInfoDevice]
  factory ExternalUserInfoDevice.fromJson(Map<String, dynamic> json) =>
      _$ExternalUserInfoDeviceFromJson(json);

  /// Converts a [ExternalUserInfoDevice] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ExternalUserInfoDeviceToJson(this);

  /// A string that represents the end-user unique device id.
  final String? id;

  @override
  List<Object?> get props => [id];
}
