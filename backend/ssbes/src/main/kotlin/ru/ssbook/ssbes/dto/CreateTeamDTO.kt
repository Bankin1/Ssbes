package ru.ssbook.ssbes.dto

import org.apache.logging.log4j.util.StringMap
import java.util.*

data class CreateTeamDTO(
    val name: String,
    val userId: UUID,
)
