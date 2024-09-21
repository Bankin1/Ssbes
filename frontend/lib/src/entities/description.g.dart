// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      isYandex: json['is_yandex'] as bool?,
      isToPublic: json['is_to_public'] as bool?,
      stackOfTechnology: json['stack_of_technology'] as String?,
      whatIDo: json['what_ido'] as String?,
      office: json['office'] as String?,
      workingTime: json['working_time'] as String?,
      haveISeat: json['seat'] as bool?,
      howOftenSinks: json['how_often_sink'] as String?,
      isOpenSpace: json['is_open_space'] as bool?,
      workAfter: json['work_after'] as bool?,
      averageAge: (json['average_age'] as num?)?.toInt(),
      isHealthyLifestyle: json['is_healthy_lifestyle'] as String?,
      party: json['party'] as String?,
      smthElse: json['smth_else'] as String?,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'is_yandex': instance.isYandex,
      'is_to_public': instance.isToPublic,
      'stack_of_technology': instance.stackOfTechnology,
      'what_ido': instance.whatIDo,
      'office': instance.office,
      'working_time': instance.workingTime,
      'seat': instance.haveISeat,
      'how_often_sink': instance.howOftenSinks,
      'is_open_space': instance.isOpenSpace,
      'work_after': instance.workAfter,
      'average_age': instance.averageAge,
      'is_healthy_lifestyle': instance.isHealthyLifestyle,
      'party': instance.party,
      'smth_else': instance.smthElse,
    };
