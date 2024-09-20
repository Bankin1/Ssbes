package ru.ssbook.ssbes.service

import org.springframework.stereotype.Service
import ru.ssbook.ssbes.entity.Description
import ru.ssbook.ssbes.entity.Team
import ru.ssbook.ssbes.repository.DescriptionRepository
import ru.ssbook.ssbes.repository.TeamRepository

@Service
class TeamService(
    val teamRepository : TeamRepository,
    val descriptionRepository: DescriptionRepository,
) {

//    fun addTeam(name: String) {
//        val
//        teamRepository.save(team)
//    }
}