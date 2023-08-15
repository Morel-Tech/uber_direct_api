import 'package:json_annotation/json_annotation.dart';

enum UndeliverableAction {
  /// Once a normal delivery attempt is made and a customer is not available.
  /// This action requests the courier to leave the package at dropoff location.
  @JsonValue('leave_at_door')
  leaveAtDoor,

  /// Once a normal delivery attempt is made and a customer is not available.
  /// This action requests the courier to return the package back to the pickup
  /// location.
  @JsonValue('return')
  returnToPickup,

  /// Discard option will allow the courier to keep/throw away the package if
  /// they are unable to deliver the package.
  discard,
}
