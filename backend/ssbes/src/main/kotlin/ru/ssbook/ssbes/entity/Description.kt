package ru.ssbook.ssbes.entity

import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import java.util.*

@Entity
data class Description(
    var isYandex: Boolean?,
    var isToPublic: Boolean?,
    var stackOfTechnology: String?,
    var whatIDo: String?,
    var office: String?,
    var workingTime: String?,
    var naveISeat: Boolean?,
    var howOftenSinks: String?,
    var isOpenSpace: Boolean?,
    var workAfter: Boolean?,

    var averageAge: Int?,
    var isHealthyLifestyle: String?,
    var party: String?,

    var smthElse: String?,

){
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    lateinit var id: UUID
}
