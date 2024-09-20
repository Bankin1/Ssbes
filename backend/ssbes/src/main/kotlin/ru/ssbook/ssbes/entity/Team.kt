package ru.ssbook.ssbes.entity

import jakarta.persistence.*
import java.util.*

@Entity
data class Team(
    val name: String,
    val descriptionId: UUID,
    val userId: UUID,
){
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    lateinit var id: UUID
}
