package ru.ssbook.ssbes.entity

import jakarta.persistence.*
import java.util.*

@Entity
data class Team(
    @Column(name = "name")
    val name: String,

    @Column(name = "description_id")
    val descriptionId: UUID,

    @Column(name = "user_id")
    val userId: UUID
){
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    lateinit var id: UUID
}
