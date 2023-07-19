package ${package}.components

import lucide_react.Moon
import lucide_react.Sun
import ${package}.theme.useTheme
import react.FC
import react.Props
import react.dom.html.ReactHTML
import shadcn.ui.components.Button
import web.cssom.ClassName

val ThemeToggle = FC<Props> {
    val useTheme = useTheme()
    Button {
        variant = "ghost"
        className = ClassName("w-9 h-9 px-0")
        onClick = {
            useTheme.setTheme( if (useTheme.theme === "light") "dark" else "light")
        }
        Sun {
            className = ClassName("h-[1.5rem] w-[1.3rem] dark:hidden")
        }
        Moon { className = ClassName("hidden h-5 w-5 dark:block") }
        ReactHTML.span {
            className = ClassName("sr-only")
            +"Toggle theme"
        }
    }
}