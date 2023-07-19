package ${package}.components.layouts

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import ${package}.components.SiteHeader
import ${package}.theme.ThemeProvider
import react.FC
import react.Props
import react.ReactNode
import react.create
import react.dom.client.createRoot
import react.dom.html.ReactHTML.div
import web.cssom.ClassName
import web.dom.document


@Composable
fun PageLayout(
    title: String,
    children: ReactNode? = null
) {
    kotlinext.js.require("./globals.css")
    val layout = FC<Props> {
        ThemeProvider {
            defaultTheme = "system"
            enableSystem = true
            div {
                className = ClassName("relative flex min-h-screen flex-col")
                SiteHeader {}
                div {
                    className = ClassName("flex-1")
                    +children
                }
            }
        }
    }
    LaunchedEffect(Unit) {
        document.title = title
        val root = document.getElementById("app")
        createRoot(root!!).render(layout.create())
    }
}

