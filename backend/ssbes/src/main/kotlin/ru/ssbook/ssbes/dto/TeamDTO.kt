package ru.ssbook.ssbes.dto

import java.util.*

data class TeamDTO(
    val id: UUID,
    val name: String,
    val descriptionId: UUID,
)
