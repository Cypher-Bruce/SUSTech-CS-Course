import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar
import org.springframework.boot.gradle.tasks.bundling.BootJar
import org.springframework.boot.gradle.tasks.run.BootRun

plugins {
    java
    alias(libs.plugins.spring.boot)
    alias(libs.plugins.spring.dependencyManagement)
    alias(libs.plugins.lombok)
    alias(libs.plugins.shadow)
}

dependencies {
    implementation("org.springframework.boot:spring-boot-starter-jdbc")

    // You may add any utility library you want to use, such as guava.
    // ORM libraries are prohibited in this project.
}

tasks.withType<BootRun> {
    enabled = false
}

tasks.withType<BootJar> {
    enabled = false
}

tasks.register("submitJar") {
    group = "application"
    description = "Prepare an uber-JAR for submission"

    tasks.getByName<ShadowJar>("shadowJar") {
        archiveFileName = "sustc-api.jar"
        destinationDirectory = File("$rootDir/submit")
        dependencies {
            exclude(dependency("ch.qos.logback:logback-.*"))
        }
    }.let { dependsOn(it) }
}

tasks.clean {
    delete(fileTree("$rootDir/submit").matching { include("*.jar") })
}

tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"
}