package ru.ssbook.ssbes.dto

import java.util.*

data class CreateTeamDTO(
    val name: String,
    val userId: UUID,
)
