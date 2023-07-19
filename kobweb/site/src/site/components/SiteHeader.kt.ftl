package ${package}.components

import ${package}.config.SiteConfig
import lucide_react.Twitter
import react.FC
import react.Props
import react.dom.html.ReactHTML
import react.dom.html.ReactHTML.a
import react.dom.html.ReactHTML.div
import react.dom.html.ReactHTML.nav
import web.cssom.ClassName
import web.window.WindowTarget

val SiteHeader = FC<Props> {
    div {
        className = ClassName("bg-background sticky top-0 z-40 w-full border-b")
        div {
            className = ClassName("container flex h-16 items-center space-x-4 sm:justify-between sm:space-x-0")
            MainNav { items = SiteConfig.mainNav }
            div {
                className = ClassName("flex flex-1 items-center justify-end space-x-4")
                nav {
                    className = ClassName("flex items-center space-x-1")
                    a {
                        href = SiteConfig.Links.github
                        target = WindowTarget._blank
                        rel = "noreferrer"
                        div {
                            className =
                                ClassName("inline-flex items-center justify-center text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-accent hover:text-accent-foreground h-9 rounded-md w-9 px-0")
                            Icons.github { className = ClassName("h-5 w-5") }
                            ReactHTML.span {
                                className = ClassName("sr-only")
                                +"Github"
                            }
                        }
                    }
                    a {
                        href = SiteConfig.Links.twitter
                        target = WindowTarget._blank
                        rel = "noreferrer"
                        div {
                            className =
                                ClassName("inline-flex items-center justify-center text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-accent hover:text-accent-foreground h-9 rounded-md w-9 px-0")
                            Twitter { className = ClassName("h-5 w-5 fill-current") }
                            ReactHTML.span {
                                className = ClassName("sr-only")
                                +"Twitter"
                            }
                        }
                    }
                    ThemeToggle()
                }
            }
        }
    }
}