//
//  ContentView.swift
//  DadJokes
//
//  Created by Aleksandar Filipov on 5/5/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Joke.entity(), sortDescriptors: [
        NSSortDescriptor(keyPath: \Joke.setup, ascending: true)
    ]) var jokes: FetchedResults<Joke>
    
    @State private var showingAddJoke = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(jokes, id: \.setup) { joke in
                    NavigationLink(destination: {
                        Text(joke.punchline)
                    }, label: {
                        EmojiView(for: joke.rating)
                        Text(joke.setup)
                    })
                }
            }
            .navigationTitle("All Groan Up")
            .toolbar {
                Button("Add") {
                    showingAddJoke.toggle()
                }
            }
            .sheet(isPresented: $showingAddJoke) {
                AddView()
                    .environment(\.managedObjectContext, moc)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
