package ${package}.pages

import androidx.compose.runtime.*
import com.varabyte.kobweb.core.Page
import ${package}.components.layouts.PageLayout
import ${package}.config.SiteConfig
import ${package}.util.ButtonVariants
import ${package}.util.buttonVariants
import react.FC
import react.Props
import react.create
import react.dom.html.ReactHTML.a
import react.dom.html.ReactHTML.br
import react.dom.html.ReactHTML.button
import react.dom.html.ReactHTML.div
import react.dom.html.ReactHTML.h1
import react.dom.html.ReactHTML.p
import react.dom.html.ReactHTML.section
import web.cssom.ClassName
import web.window.WindowTarget

@Page
@Composable
fun HomePage() {
    PageLayout(
        title = "Home",
        children = Index.create()
    )
}

val Index = FC<Props> {
    section {
        className = ClassName("container grid items-center gap-6 pb-8 pt-6 md:py-10")
        div {
            className = ClassName("flex max-w-[980px] flex-col items-start gap-2")
            h1 {
                className = ClassName("text-3xl font-extrabold leading-tight tracking-tighter md:text-4xl")
                +"Beautifully designed components"
                br { className = ClassName("hidden sm:inline") }
                +"built with Radix UI and Tailwind CSS."
            }
            p {
                className = ClassName("max-w-[700px] text-lg text-muted-foreground")
                +"Accessible and customizable components that you can us"
                +" in your apps. Free. Open Source."
            }
        }
        div {
            className = ClassName("flex gap-4")
            a {
                href = SiteConfig.Links.docs
                target = WindowTarget._blank
                rel = "noreferrer"
                className = buttonVariants()
                +"Documentation"
            }
            a {
                href = SiteConfig.Links.github
                target = WindowTarget._blank
                rel = "noreferrer"
                className = buttonVariants(ButtonVariants.outline)
                +"GitHub"
            }
        }
    }
}