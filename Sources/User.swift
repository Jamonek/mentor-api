struct User {

  enum userTypes {
    case Mentor
    case Mentee 
  }

  let id: Int
  let fullName: String
  let email: String
  let userType: userTypes
}
