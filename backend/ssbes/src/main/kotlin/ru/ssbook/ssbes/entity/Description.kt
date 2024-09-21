package ru.ssbook.ssbes.entity

import jakarta.persistence.*
import java.util.*

@Entity
@Table(name = "description")
data class Description(
    @Column(name = "is_yandex")
    var isYandex: Boolean? = null,

    @Column(name = "is_to_public")
    var isToPublic: Boolean? = null,

    @Column(name = "stack_of_technology")
    var stackOfTechnology: String? = null,

    @Column(name = "what_i_do")
    var whatIDo: String? = null,

    @Column(name = "office")
    var office: String? = null,

    @Column(name = "working_time")
    var workingTime: String? = null,

    @Column(name = "seat")
    var seat: Boolean? = null,

    @Column(name = "how_often_sinks")
    var howOftenSinks: String? = null,

    @Column(name = "is_open_space")
    var isOpenSpace: Boolean? = null,

    @Column(name = "work_after")
    var workAfter: Boolean? = null,

    @Column(name = "average_age")
    var averageAge: Int? = null,

    @Column(name = "is_healthy_lifestyle")
    var isHealthyLifestyle: Boolean? = null,

    @Column(name = "party")
    var party: String? = null,

    @Column(name = "smth_else")
    var smthElse: String? = null

){
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    lateinit var id: UUID
}
