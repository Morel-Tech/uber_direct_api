// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manifest_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManifestItem _$ManifestItemFromJson(Map<String, dynamic> json) => ManifestItem(
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      size: $enumDecodeNullable(_$ManifestItemSizeEnumMap, json['size']),
      dimensions: json['dimensions'] == null
          ? null
          : ManifestItemDimensions.fromJson(
              json['dimensions'] as Map<String, dynamic>),
      price: json['price'] as int?,
      mustBeUpright: json['must_be_upright'] as bool?,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$ManifestItemToJson(ManifestItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('size', _$ManifestItemSizeEnumMap[instance.size]);
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('price', instance.price);
  writeNotNull('must_be_upright', instance.mustBeUpright);
  writeNotNull('weight', instance.weight);
  return val;
}

const _$ManifestItemSizeEnumMap = {
  ManifestItemSize.small: 'small',
  ManifestItemSize.medium: 'medium',
  ManifestItemSize.large: 'large',
  ManifestItemSize.xlarge: 'xlarge',
};
