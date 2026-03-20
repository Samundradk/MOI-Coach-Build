// *** START OF NEW CODE ***
buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Yo line le Google Services plugin download garchha
        classpath("com.android.tools.build:gradle:8.2.1") // Or whatever version you have
        classpath("com.google.gms:google-services:4.4.1")
    }
}
// *** END OF NEW CODE ***

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}