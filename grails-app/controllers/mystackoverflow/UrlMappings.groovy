package mystackoverflow

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: '/index', id:"lang", format:"fr")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
