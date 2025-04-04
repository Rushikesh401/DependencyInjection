//
//  UserService.swift
//  DependencyInjection
//
//  Created by Rushikesh Suradkar on 04/04/25.
//

import Foundation

//MARK: Protocol for Abstarction
protocol UserServiceProtocol {
    func fetchUsers() -> [User]
}


// MARK: Real Data
class UserService : UserServiceProtocol {
    func fetchUsers() -> [User] {
        return [User(id: 1, name: "Real"), User(id: 2, name: "Data")]
    }
}

// MARK: MOCK Data

class MockUserService : UserServiceProtocol {
    func fetchUsers() -> [User] {
        return [User(id: 1, name: "mock"), User(id: 2, name: "data")]
    }
}




