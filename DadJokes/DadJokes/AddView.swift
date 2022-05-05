//
//  AddView.swift
//  DadJokes
//
//  Created by Aleksandar Filipov on 5/5/22.
//

import SwiftUI

struct AddView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    
    @State private var setup = ""
    @State private var punchline = ""
    @State private var rating = "Silence"
    
    let ratings = ["Sob", "Sigh", "Silence", "Smirk"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Setup", text: $setup)
                    TextField("Punchline", text: $punchline)
                    
                    Picker("Rating", selection: $rating) {
                        ForEach(ratings, id: \.self) { rating in
                            Text(rating)
                        }
                    }
                }
                
                Button("Add Joke") {
                    let newJoke = Joke(context: moc)
                    newJoke.setup = setup
                    newJoke.punchline = punchline
                    newJoke.rating = rating
                    
                    do {
                        try moc.save()
                        presentationMode.wrappedValue.dismiss()
                    } catch {
                        print("Whoops! \(error.localizedDescription)")
                    }
                }
                
            }
            .navigationTitle("New Joke")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
