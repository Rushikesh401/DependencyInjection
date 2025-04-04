//
//  ContentView.swift
//  DependencyInjection
//
//  Created by Rushikesh Suradkar on 04/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        UserListView(service: UserService())
    }
}

#Preview {
    ContentView()
}
