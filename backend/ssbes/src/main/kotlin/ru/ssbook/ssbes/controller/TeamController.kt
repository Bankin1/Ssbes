package ru.ssbook.ssbes.controller

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.*
import ru.ssbook.ssbes.dto.CreateTeamDTO
import ru.ssbook.ssbes.dto.TeamDTO
import ru.ssbook.ssbes.service.TeamService
import java.util.*

@RestController
@RequestMapping("/v1/team")
class TeamController(
    val teamService: TeamService,
) {

    @PostMapping("/add")
    @ResponseStatus(HttpStatus.CREATED)
    fun addTeam(
        @RequestBody createTeamDTO: CreateTeamDTO
    ){
        teamService.addTeam(createTeamDTO)
    }

    @DeleteMapping("/{id}")
    fun deleteTeam(
        @PathVariable("id") id: UUID,
    ){
        teamService.deleteTeam(id)
    }

    @GetMapping("/{user_id}")
    fun getTeams(
        @PathVariable("user_id") userId: String,
    ) : List<TeamDTO> =
        teamService.getTeams(UUID.fromString(userId))

}