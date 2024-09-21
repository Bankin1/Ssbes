package ru.ssbook.ssbes.controller

import org.springframework.web.bind.annotation.*
import ru.ssbook.ssbes.dto.DescriptionDTO
import ru.ssbook.ssbes.service.DescriptionService
import java.util.*

@RestController
@RequestMapping("/v1/description")
class DescriptionController(
    val descriptionService: DescriptionService,
) {

    @GetMapping("/{id}")
    fun getDescription(@PathVariable("id") id: UUID) :
            DescriptionDTO = descriptionService.getDescription(id)

    @PostMapping("/{id}")
    fun updateDescription(
        @PathVariable("id") id: UUID,
        @RequestBody descriptionDTO: DescriptionDTO,
    ) {
        descriptionService.updateDescription(id, descriptionDTO)
    }
}