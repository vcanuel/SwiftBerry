import HTTPServer

final class restServer {
    
    let log = LogMiddleware()
    var router : BasicRouter?
    var gpManager: gpioManagerProtocol

    init(manager: gpioManager) {
        gpManager =  manager
        initRoutes()
        launchServer()
    }

    func initRoutes() {
        router =  BasicRouter { route in
            route.get("/getTemp") { request in
                let temp = self.gpManager.getTemp()
                return Response(body: "The temp is \(temp)!")
            }
        }
    }

    func launchServer() {
         do {
            let server = try Server(port: 8080, middleware: [log], responder: router!)
            try server.start()
        }
        catch {
          print("server error")
        }
    }
}


