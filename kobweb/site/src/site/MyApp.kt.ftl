package ${package}

import androidx.compose.runtime.Composable
import com.varabyte.kobweb.core.App
import org.jetbrains.compose.web.dom.Div

@App
@Composable
fun MyApp(content: @Composable () -> Unit) {
    /**
     * Creating a div with id `app` so we can render react layouts directly in this div using its id.
     * If you change this id, make sure you use that id in [PageLayout]
     */
    Div(attrs = {
        id("app")
        classes("min-h-screen", "antialiased")
    }) {
        content()
    }
}
