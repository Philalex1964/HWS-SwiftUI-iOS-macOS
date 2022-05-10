//
//  EmojiView.swift
//  DadJokes
//
//  Created by Aleksandar Filipov on 5/5/22.
//

import SwiftUI

struct EmojiView: View {
    var rating: String
    
    var body: some View {
        switch rating {
        case "Sob":
            Text("😭")
        case "Sigh":
            Text("😔")
        case "Smirk":
            Text("😏")
        default:
            Text("😐")
        }
    }
    
    init(for rating: String) {
        self.rating = rating
    }
}

struct EmojiView_Previews: PreviewProvider {

    static var previews: some View {
        EmojiView(for: "Sob")
    }
}
