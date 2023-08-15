import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'manifest_item.g.dart';

@JsonSerializable()
class ManifestItem extends Equatable {
  const ManifestItem({
    this.name,
    this.quantity,
    this.size,
    this.dimensions,
    this.price,
    this.mustBeUpright,
    this.weight,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ManifestItem]
  factory ManifestItem.fromJson(Map<String, dynamic> json) =>
      _$ManifestItemFromJson(json);

  /// Converts a [ManifestItem] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ManifestItemToJson(this);

  /// Description of item.
  final String? name;

  /// Quantity of items.
  final int? quantity;

  /// Approximate size of item. **Note:** If nothing is specified, small will be
  /// applied by default.
  final ManifestItemSize? size;

  /// Struct that contains dimensions. Note that `weight` is required when
  /// dimensions(`length`, `depth` and `height`) are provided.
  final ManifestItemDimensions? dimensions;

  /// The price of the item. The value passed in should be based on 0.01 unit
  /// of the local currency. For example, in the US, a value of 1 would mean a
  /// cent ($0.01), and a value of 100 would mean a dollar ($1.00).
  final int? price;

  /// Whether the item should be in upright position (box of pizza, bottle of
  /// milk etc).
  final bool? mustBeUpright;

  /// Weight in grams.
  final int? weight;

  @override
  List<Object?> get props {
    return [
      name,
      quantity,
      size,
      dimensions,
      price,
      mustBeUpright,
      weight,
    ];
  }
}
