#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif
import HTTP
import Router
import Epoch
import CHTTPParser
import CLibvenice

let server = Server(port: 8080, responder: router)
server.start()
