// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      id: json['id'] as String,
      isYandex: json['isYandex'] as bool?,
      isToPublic: json['isToPublic'] as bool?,
      stackOfTechnology: json['stackOfTechnology'] as String?,
      whatIDo: json['whatIDo'] as String?,
      office: json['office'] as String?,
      workingTime: json['workingTime'] as String?,
      naveISeat: json['naveISeat'] as bool?,
      howOftenSinks: json['howOftenSinks'] as String?,
      isOpenSpace: json['isOpenSpace'] as bool?,
      workAfter: json['workAfter'] as bool?,
      averageAge: (json['averageAge'] as num?)?.toInt(),
      isHealthyLifestyle: json['isHealthyLifestyle'] as String?,
      party: json['party'] as String?,
      smthElse: json['smthElse'] as String?,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isYandex': instance.isYandex,
      'isToPublic': instance.isToPublic,
      'stackOfTechnology': instance.stackOfTechnology,
      'whatIDo': instance.whatIDo,
      'office': instance.office,
      'workingTime': instance.workingTime,
      'naveISeat': instance.naveISeat,
      'howOftenSinks': instance.howOftenSinks,
      'isOpenSpace': instance.isOpenSpace,
      'workAfter': instance.workAfter,
      'averageAge': instance.averageAge,
      'isHealthyLifestyle': instance.isHealthyLifestyle,
      'party': instance.party,
      'smthElse': instance.smthElse,
    };
