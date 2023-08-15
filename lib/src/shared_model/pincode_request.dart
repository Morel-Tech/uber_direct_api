import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pincode_request.g.dart';

@JsonSerializable()
class PincodeRequest extends Equatable {
  const PincodeRequest({
    this.enabled,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [PincodeRequest]
  factory PincodeRequest.fromJson(Map<String, dynamic> json) =>
      _$PincodeRequestFromJson(json);

  /// Converts a [PincodeRequest] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$PincodeRequestToJson(this);

  /// When set to true in POST requests, the delivery will require pincode entry
  ///  at handoff. The pincode is internally generated and shared by Uber.
  final bool? enabled;

  @override
  List<Object?> get props => [enabled];
}
