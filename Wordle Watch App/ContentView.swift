//
//  ContentView.swift
//  Wordle Watch App
//
//  Created by Kari on 5/1/23.
//

import SwiftUI

var numGamesWon = 0
struct ContentView: View {
    var body: some View {
        VStack {
            Text("GHW Games: Infinite Wordle!")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Text("Your Games Won: \(numGamesWon)")
                .foregroundColor(.white)
            Button("Play Now") {
                //open companion app
            }
            .padding(.all, 5)
            .foregroundColor(.white)
            .cornerRadius(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
