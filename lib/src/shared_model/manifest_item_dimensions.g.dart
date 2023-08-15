// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manifest_item_dimensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManifestItemDimensions _$ManifestItemDimensionsFromJson(
        Map<String, dynamic> json) =>
    ManifestItemDimensions(
      length: json['length'] as int?,
      height: json['height'] as int?,
      depth: json['depth'] as int?,
    );

Map<String, dynamic> _$ManifestItemDimensionsToJson(
    ManifestItemDimensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('depth', instance.depth);
  return val;
}
