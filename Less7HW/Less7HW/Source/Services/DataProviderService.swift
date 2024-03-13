//
//  DataProviderService.swift
//  Less7HW
//

//

import Foundation


    
    class DataProviderService {
        
        func loadUserData(closure: (ProfileData) -> Void) {
            
            let user = UserModel(
                userAvatarName: "userAvatar",
                userFirstName: "John",
                userLastName: "Smith",
                userEmail: "john.smith@gmail.com",
                userAdderss: "Green Bay, 1442 Sycamore Lake Road"
            )
        closure(user)
        }
        
        func loadAdminData(closure: (ProfileData) -> Void) {
            
            let admin = AdminModel(
                adminAvatarName: "adminAvatar",
                adminFirstName: "Bob",
                adminLastName: "Lester",
                adminEmail: "bob.lester@gmail.com",
                adminAdderss: "Russellville, 1171 Cambridge Court"
            )
            closure(admin)
        }
    }

protocol ProfileData {
    var avatarName: String { get }
    var firstName: String { get }
    var lastName: String { get }
    var eMail: String { get }
    var address: String { get }
    
    
}

