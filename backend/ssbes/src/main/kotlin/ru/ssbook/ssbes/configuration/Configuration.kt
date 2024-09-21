package ru.ssbook.ssbes.configuration

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.databind.PropertyNamingStrategies
import org.springframework.boot.autoconfigure.security.SecurityProperties
import org.springframework.boot.web.servlet.FilterRegistrationBean
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.context.annotation.PropertySource
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder
import org.springframework.scheduling.annotation.EnableScheduling
import org.springframework.web.client.RestTemplate
import org.springdoc.core.models.GroupedOpenApi

@Configuration()
class Configuration {
    @Bean
    fun objectMapper(builder: Jackson2ObjectMapperBuilder) =
        builder.createXmlMapper(false).build<ObjectMapper>().apply {
            propertyNamingStrategy = PropertyNamingStrategies.SNAKE_CASE
        }

//    @Bean
//    fun publicApi(): GroupedOpenApi {
//        return GroupedOpenApi.builder()
//            .group("public")
//            .pathsToMatch("/v1")
//            .build()
//    }
}