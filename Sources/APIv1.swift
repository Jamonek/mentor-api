import HTTP
import Router
import Middleware

let APIv1 = Router("/v1") { route in
  route.post("/user/signup", parseJSON >>> userResources.signup)
  route.post("/user/signin", parseJSON >>> userResources.signin)

  route.get("/version") { _ in
    return Response(status: .OK, json: ["version": "1.0.0"])
  }
}
