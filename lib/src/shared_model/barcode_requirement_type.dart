import 'package:json_annotation/json_annotation.dart';

enum BarcodeRequirementType {
  @JsonValue('CODE39')
  code39,
  @JsonValue('CODE39_FULL_ASCII')
  code39FullAscii,
  @JsonValue('CODE128')
  code128,
  @JsonValue('QR')
  qr,
}
