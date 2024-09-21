package ru.ssbook.ssbes.service

import jakarta.transaction.Transactional
import org.springframework.stereotype.Service
import ru.ssbook.ssbes.dto.DescriptionDTO
import ru.ssbook.ssbes.entity.Description
import ru.ssbook.ssbes.repository.DescriptionRepository
import java.util.*

@Service
class DescriptionService(
    val descriptionRepository: DescriptionRepository
) {

    fun Description.updateFromDTO(descriptionDTO: DescriptionDTO) {
        seat = descriptionDTO.seat
        office = descriptionDTO.office
        party = descriptionDTO.party
        isYandex = descriptionDTO.isYandex
        isToPublic = descriptionDTO.isToPublic
        stackOfTechnology = descriptionDTO.stackOfTechnology
        whatIDo = descriptionDTO.whatIDo
        workingTime = descriptionDTO.workingTime
        howOftenSinks = descriptionDTO.howOftenSinks
        isOpenSpace = descriptionDTO.isOpenSpace
        workAfter = descriptionDTO.workAfter
        averageAge = descriptionDTO.averageAge
        isHealthyLifestyle = descriptionDTO.isHealthyLifestyle
        smthElse = descriptionDTO.smthElse
    }

    @Transactional
    fun updateDescription(id: UUID, descriptionDTO: DescriptionDTO) {
        descriptionRepository.getDescriptionById(id).apply {
            updateFromDTO(descriptionDTO)
        }.also {
            descriptionRepository.save(it)
        }
    }

    fun getDescription(id: UUID): DescriptionDTO =
        DescriptionDTO(descriptionRepository.getDescriptionById(id))

    @Transactional
    fun addDescription() : UUID {
        val description = Description(
            isYandex = null,
            isToPublic = null,
            stackOfTechnology = null,
            whatIDo = null,
            office = null,
            workingTime = null,
            seat = null,
            howOftenSinks = null,
            isOpenSpace = null,
            workAfter = null,
            averageAge = null,
            isHealthyLifestyle = null,
            party = null,
            smthElse = null,
        )
        descriptionRepository.save(description)
        return description.id
    }
}