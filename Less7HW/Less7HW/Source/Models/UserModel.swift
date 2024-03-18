//
//  UserModel.swift
//  Less7HW
//

//

import Foundation

struct UserModel {
    
    let userAvatarName: String
    let userFirstName: String
    let userLastName: String
    let userEmail: String
    let userAdderss: String

}

    extension UserModel: ProfileData {
    var avatarName: String {
        userAvatarName
    }
    
    var firstName: String {
        userFirstName
    }
    
    var lastName: String {
        userLastName
    }
    
    var eMail: String {
        userEmail
    }
    
    var address: String {
        userAdderss
    }
    
   
    
}
