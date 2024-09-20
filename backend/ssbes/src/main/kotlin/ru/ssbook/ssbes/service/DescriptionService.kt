package ru.ssbook.ssbes.service

import org.springframework.stereotype.Service
import ru.ssbook.ssbes.entity.Description
import ru.ssbook.ssbes.repository.DescriptionRepository

@Service
class DescriptionService(
    val descriptionRepository: DescriptionRepository
) {

//    fun addDescription() {
//        val description = Description()
//
//    }
}