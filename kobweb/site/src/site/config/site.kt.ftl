package ${package}.config

object SiteConfig {
    const val name = "${projectTitle}"
    const val description = "Beautifully designed components built with Radix UI and Tailwind CSS."
    val mainNav = listOf(
        "Home" to "/"
    )

    object Links {
        const val twitter = "https://twitter.com/shadcn"
        const val github = "https://github.com/dead8309/shadcn-kotlin"
        const val docs = "https://shadcn-kotlin.vercel.app"
    }
}