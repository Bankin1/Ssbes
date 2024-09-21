package ru.ssbook.ssbes.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import ru.ssbook.ssbes.entity.Description
import java.util.*

@Repository
interface DescriptionRepository: JpaRepository<Description, UUID> {

    fun getDescriptionById(id: UUID): Description

}