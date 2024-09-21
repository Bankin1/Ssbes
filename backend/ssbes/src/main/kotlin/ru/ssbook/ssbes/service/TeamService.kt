package ru.ssbook.ssbes.service

import jakarta.transaction.Transactional
import org.springframework.stereotype.Service
import ru.ssbook.ssbes.dto.CreateTeamDTO
import ru.ssbook.ssbes.dto.TeamDTO
import ru.ssbook.ssbes.entity.Team
import ru.ssbook.ssbes.repository.DescriptionRepository
import ru.ssbook.ssbes.repository.TeamRepository
import java.util.UUID

@Service
class TeamService(
    val teamRepository : TeamRepository,
    val descriptionService: DescriptionService,
    val descriptionRepository: DescriptionRepository
) {

    @Transactional
    fun addTeam(
        createTeamDTO: CreateTeamDTO,
    ) {
        val descriptionId = descriptionService.addDescription()
        val team = Team(createTeamDTO.name, descriptionId, createTeamDTO.userId)
        teamRepository.save(team)
    }

    @Transactional
    fun deleteTeam(id: UUID) {
        val descriptionId = teamRepository.getTeamById(id).descriptionId
        teamRepository.deleteById(id)
        descriptionRepository.deleteById(descriptionId)
    }

    fun getTeams(userId: UUID): List<TeamDTO> =
        teamRepository.getAllByUserId(userId).map { team -> TeamDTO(
            name = team.name,
            id = team.id,
            descriptionId = team.descriptionId,
        )}
}