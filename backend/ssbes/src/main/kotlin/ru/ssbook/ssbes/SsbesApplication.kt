package ru.ssbook.ssbes

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SsbesApplication

fun main(args: Array<String>) {
	runApplication<SsbesApplication>(*args)
}
