import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ManifestItemSize {
  /// You can carry it with one hand e.g. bottle of water.
  small,

  /// You need a tote bag to carry it e.g. retail bag.
  medium,

  /// You need two hands to carry it e.g. computer monitor.
  large,

  /// You will need to make multiple trips to/from a vehicle to transport e.g.
  /// grocery order. Specifying `xlarge` will cause dispatch to only couriers
  /// using a car or larger (no walkers/bikes/scooters/etc…).
  xlarge,
}
