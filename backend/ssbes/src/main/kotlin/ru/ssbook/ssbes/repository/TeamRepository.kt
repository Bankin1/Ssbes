package ru.ssbook.ssbes.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import ru.ssbook.ssbes.entity.Team
import java.util.*

@Repository
interface TeamRepository : JpaRepository<Team, UUID> {

    fun getAllByUserId(userId: UUID): List<Team>

}