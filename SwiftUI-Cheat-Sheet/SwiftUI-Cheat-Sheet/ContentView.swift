//
//  ContentView.swift
//  SwiftUI-Cheat-Sheet
//
//  Created by Aleksandar Filipov on 5/6/22.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .font(.largeTitle)
            .cornerRadius(10)
    }
}

struct ContentView: View {
    let users = ["Paul Hudson", "Taylor Swift"]

    var body: some View {
        Text("Hello World!")
            .modifier(PrimaryLabel())
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
