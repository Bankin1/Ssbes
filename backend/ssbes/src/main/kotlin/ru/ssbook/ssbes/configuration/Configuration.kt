package ru.ssbook.ssbes.configuration

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.PropertyNamingStrategies
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder


@Configuration
class Configuration {
    @Bean
    fun objectMapper(builder: Jackson2ObjectMapperBuilder) =
        builder.createXmlMapper(false).build<ObjectMapper>().apply {
            propertyNamingStrategy = PropertyNamingStrategies.SNAKE_CASE
        }
}