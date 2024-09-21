package ru.ssbook.ssbes.dto

import ru.ssbook.ssbes.entity.Description

class DescriptionDTO(description: Description) {
    val isYandex = description.isYandex
    val isToPublic = description.isToPublic
    val stackOfTechnology = description.stackOfTechnology
    val whatIDo = description.whatIDo
    val office = description.office
    val workingTime = description.workingTime
    val seat = description.seat
    val howOftenSinks = description.howOftenSinks
    val isOpenSpace = description.isOpenSpace
    val workAfter = description.workAfter
    val averageAge = description.averageAge
    val isHealthyLifestyle = description.isHealthyLifestyle
    val party = description.party
    val smthElse = description.smthElse
}
