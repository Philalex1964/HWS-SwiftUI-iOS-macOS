//
//  ContentView.swift
//  SwiftUI-Cheat-Sheet
//
//  Created by Aleksandar Filipov on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    let users = ["Paul Hudson", "Taylor Swift"]

    var body: some View {
        NavigationView {
            List(users, id: \.self) { user in
                NavigationLink(destination: Text("Detail View")) {
                    ExtractedView() // extracted with Cmd-click

                    VStack(alignment: .leading) {
                        Text(user)
                            .font(.headline)
                        Text("Occupation: Programmer")
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            ContentView()
                .environment(\.colorScheme, .dark)
            NavigationView {
                ContentView()
            }
        }
}

struct ExtractedView: View {
    var body: some View {
        Image(systemName: "sun.max")
            .resizable()
            .frame(width: 50, height: 50)
    }
}
