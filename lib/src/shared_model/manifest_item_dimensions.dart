import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manifest_item_dimensions.g.dart';

@JsonSerializable()
class ManifestItemDimensions extends Equatable {
  const ManifestItemDimensions({
    this.length,
    this.height,
    this.depth,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ManifestItemDimensions]
  factory ManifestItemDimensions.fromJson(Map<String, dynamic> json) =>
      _$ManifestItemDimensionsFromJson(json);

  /// Converts a [ManifestItemDimensions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ManifestItemDimensionsToJson(this);

  /// Length in centimeters
  final int? length;

  /// Height in centimeters
  final int? height;

  /// Depth in centimeters
  final int? depth;

  @override
  List<Object?> get props => [length, height, depth];
}
