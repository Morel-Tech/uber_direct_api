import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum DeliverableAction {
  /// Meet at door delivery. This is the default if DeliverableAction is not
  /// set.
  deliverableActionMeetAtDoor,

  /// The “happy path” action for the courier to take on a delivery. When used,
  /// delivery action can be set to “leave at door” for a contactless delivery.
  /// Cannot leave at door when signature or ID verification requirements are
  /// applied when creating a delivery. Photo confirmation of delivery will be
  /// automatically applied as a requirement to complete drop-off.
  deliverableActionLeaveAtDoor,
}
