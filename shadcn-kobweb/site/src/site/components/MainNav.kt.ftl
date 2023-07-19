package ${package}.components

import ${package}.config.SiteConfig
import react.FC
import react.Props
import react.dom.html.ReactHTML
import react.dom.html.ReactHTML.a
import react.dom.html.ReactHTML.div
import react.dom.html.ReactHTML.nav
import web.cssom.ClassName

external interface MainNavProps: Props {
    var items: List<Pair<String, String>>
}

val MainNav = FC<MainNavProps> {
    div {
        className = ClassName("flex gap-6 md:gap-10")
        a {
            href = "/"
            className = ClassName("mr-6 flex items-center space-x-2")
            Icons.logo { className = ClassName("h-6 w-6") }
            ReactHTML.span {
                className = ClassName("hidden font-bold sm:inline-block")
                +SiteConfig.name
            }
        }
        nav {
            className = ClassName("flex gap-6")
            it.items.forEachIndexed { index, (title, href) ->
                a {
                    key = index.toString()
                    this.href = href
                    className = ClassName("flex items-center text-sm font-medium text-muted-foreground")
                    + title
                }
            }
        }
    }
}