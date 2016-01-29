import PostgreSQL
import CLibpq
import Foundation

final class UserModel {
  let db = Connection("postgresql://mentor:mentordb@localhost/mentor")

  init() throws {
    try db.open()
    try db.execute("CREATE TABLE IF NOT EXISTS users (id SERIAL PRIMARY KEY, fullname TEXT NOT NULL, email VARCHAR(256) NOT NULL, password TEXT NOT NULL, birthday TEXT NOT NULL, usertype INT NOT NULL, token TEXT NOT NULL)")
  }

  deinit {
    db.close()
  }

  func createUser(fullName: String, email: String, password: String, birthday: String, userType: Int) -> Bool {
    do {
      let _ = try db.execute("INSERT INTO users (fullname, email, password, birthday, usertype, token) VALUES ('\(fullName)', '\(email)', '\(password)', '\(birthday)', '\(userType)', 'rj3u')")
    } catch {
      return false
    }
    return true
  }
}
