//
//  UserListView.swift
//  DependencyInjection
//
//  Created by Rushikesh Suradkar on 04/04/25.
//

import SwiftUI

struct UserListView: View {
    @State private var users : [User] = []
    private let service : UserServiceProtocol
    
    //MARK: Initializer/Contructor Injection
    init(service: UserServiceProtocol) {
        self.service = service
    }
    
    var body: some View {
        List(users) { user in
            Text(user.name)
        }.task {
            users = service.fetchUsers()
        }
    }
}

#Preview {
    UserListView(service: MockUserService())
}
