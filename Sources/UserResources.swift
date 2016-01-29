import Core
import HTTP
import Middleware

let userResources = UserResources()

final class UserResources {
  let user = try! UserModel()
  
  func signup(request: Request) -> Response {
    return Response(status: .OK, json: ["test"])
  }

  func signin(request: Request) -> Response {
    return Response(status: .OK, json: ["test"])
  }
}
