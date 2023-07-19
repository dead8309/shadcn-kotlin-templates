import com.varabyte.kobweb.gradle.application.util.configAsKobwebApplication
import kizzy.tailwind.utils.setupTailwindProject

plugins {
    alias(libs.plugins.kotlin.multiplatform)
    alias(libs.plugins.jetbrains.compose)
    alias(libs.plugins.kobweb.application)
    alias(libs.plugins.tailwind.kt)
    <#if !useMarkdown?boolean>// </#if>alias(libs.plugins.kobwebx.markdown)
}

group = "${groupId}"
version = "1.0-SNAPSHOT"

kobweb {
    app {
        index {
            description.set("Powered by Kobweb")
        }
    }
}

kotlin {
    configAsKobwebApplication("${projectName}"<#if useServer?boolean>, includeServer = true</#if>)
    // Place it below `configAsKobwebApplication` to avoid errors
    setupTailwindProject()
    @Suppress("UNUSED_VARIABLE") // Suppress spurious warnings about sourceset variables not being used
    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation(compose.runtime)
            }
        }

        val jsMain by getting {
            dependencies {
                implementation(compose.html.core)
                implementation(libs.kobweb.core)
                implementation(libs.shadcn.kotlin)
                implementation(libs.lucide.kotlin)
                implementation(npm("next-themes","0.2.1"))
                // babel dependencies
                implementation(devNpm("@babel/core","7.22.5"))
                implementation(devNpm("babel-loader","9.1.2"))
                implementation(devNpm("@babel/preset-react","7.22.5"))
                implementation(devNpm("@babel/preset-env","7.22.5"))
                implementation(devNpm("@babel/preset-typescript","7.22.5"))

                <#if !useMarkdown?boolean>// </#if>implementation(libs.kobwebx.markdown)
            }
        }
        <#if useServer?boolean>
        val jvmMain by getting {
            dependencies {
                implementation(libs.kobweb.api)
            }
        }
        </#if>
    }
}
