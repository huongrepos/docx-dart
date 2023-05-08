// import 'package:json_annotation/json_annotation.dart';
//
// enum SpecialIndentType {
//   @JsonKey(name: 'firstLine')
//   FirstLine,
//   @JsonKey(name: 'hanging')
//   Hanging,
// }
//
// enum SpecialIndentKind {
//   FirstLine,
//   Hanging,
// }
//
// extension SpecialIndentTypeExtension on SpecialIndentType {
//   String get name {
//     switch (this) {
//       case SpecialIndentType.FirstLine:
//         return 'firstLine';
//       case SpecialIndentType.Hanging:
//         return 'hanging';
//     }
//   }
//
//   int? get value {
//     switch (this) {
//       case SpecialIndentType.FirstLine:
//         return null; // FirstLine variant does not have an associated value
//       case SpecialIndentType.Hanging:
//         return _value; // return the associated integer value for Hanging variant
//     }
//   }
//
//   static const _value = 0; // integer value associated with Hanging variant
// }
//
// @JsonSerializable()
// class SpecialIndentTypeSerializer {
//   final String type;
//   final int? val;
//
//   SpecialIndentTypeSerializer({required this.type, required this.val});
//
//   factory SpecialIndentTypeSerializer.fromJson(Map<String, dynamic> json) =>
//       _$SpecialIndentTypeSerializerFromJson(json);
//
//   Map<String, dynamic> toJson() => _$SpecialIndentTypeSerializerToJson(this);
// }
//
// @JsonSerializable()
// class SpecialIndentKindSerializer {
//   final String kind;
//
//   SpecialIndentKindSerializer({required this.kind});
//
//   factory SpecialIndentKindSerializer.fromJson(Map<String, dynamic> json) =>
//       _$SpecialIndentKindSerializerFromJson(json);
//
//   Map<String, dynamic> toJson() => _$SpecialIndentKindSerializerToJson(this);
// }
//
// // Serializer for SpecialIndentType
// SpecialIndentTypeSerializer serializeSpecialIndentType(SpecialIndentType type) {
//   return SpecialIndentTypeSerializer(
//     type: type.name,
//     val: type.value,
//   );
// }
//
// // Deserializer for SpecialIndentType
// SpecialIndentType deserializeSpecialIndentType(SpecialIndentTypeSerializer serializer) {
//   switch (serializer.type) {
//     case 'firstLine':
//       return SpecialIndentType.FirstLine;
//     case 'hanging':
//       return SpecialIndentType.Hanging;
//     default:
//       throw ArgumentError('Invalid SpecialIndentType: ${serializer.type}');
//   }
// }
//
// // Serializer for SpecialIndentKind
// SpecialIndentKindSerializer serializeSpecialIndentKind(SpecialIndentKind kind) {
//   return SpecialIndentKindSerializer(
//     kind: kind.toString().split('.').last,
//   );
// }
//
// // Deserializer for SpecialIndentKind
// SpecialIndentKind deserializeSpecialIndentKind(SpecialIndentKindSerializer serializer) {
//   switch (serializer.kind) {
//     case 'FirstLine':
//       return SpecialIndentKind.FirstLine;
//     case 'Hanging':
//       return SpecialIndentKind.Hanging;
//     default:
//       throw ArgumentError('Invalid SpecialIndentKind: ${serializer.kind}');
//   }
// }