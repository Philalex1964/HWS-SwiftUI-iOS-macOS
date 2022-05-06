//
//  ContentView.swift
//  SwiftUI tips and tricks
//
//  Created by Aleksandar Filipov on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            TextField("Example placeholder", text: .constant("Hello"))
                .textFieldStyle(.roundedBorder)
            
            Slider(value: .constant(0.5))
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
