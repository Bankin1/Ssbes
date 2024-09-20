package ru.ssbook.ssbes.controller

import org.springframework.http.HttpStatus
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseStatus
import ru.ssbook.ssbes.entity.Team
import ru.ssbook.ssbes.service.TeamService

@Controller
@RequestMapping("/v1/team")
class TeamController(
    val teamService: TeamService,
) {

//    @PostMapping("/add")
//    @ResponseStatus(HttpStatus.CREATED)
//    fun addTeam(
//        @RequestBody name: String
//    ){
//        teamService.addTeam(name)
//    }
}