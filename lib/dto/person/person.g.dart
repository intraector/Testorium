// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter, non_constant_identifier_names

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$_$_PersonFromJson(Map<String, dynamic> json) {
  return _$_Person(
    id: json['id'] as int? ?? 0,
    name: json['name'] as String? ?? '',
    status: json['status'] as String? ?? '',
    species: json['species'] as String? ?? '',
    gender: json['gender'] as String? ?? '',
    origin: const CustomConverter().fromJson(json['origin'] as Map),
    location: const CustomConverter().fromJson(json['location'] as Map),
    image: json['image'] as String?,
  );
}

Map<String, dynamic> _$_$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'origin': const CustomConverter().toJson(instance.origin),
      'location': const CustomConverter().toJson(instance.location),
      'image': instance.image,
    };
