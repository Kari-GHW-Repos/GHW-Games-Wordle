//
//  ContentView.swift
//  Wordle
//
//  Created by Kari on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    //TODO: Add list of valid words
    //TODO: Add auto-tabbing between words
    //TODO: Change word at 12am GMT every day
    //TODO: Make stats page for Apple Watch <3 
    //WORD 1
    @State var letter1 = ""
    @State var letter2 = ""
    @State var letter3 = ""
    @State var letter4 = ""
    @State var letter5 = ""
    @State var word1Submitted = false
    
    //WORD 2
    @State var letter6 = ""
    @State var letter7 = ""
    @State var letter8 = ""
    @State var letter9 = ""
    @State var letter10 = ""
    @State var word2Submitted = false

    //WORD 3
    @State var letter11 = ""
    @State var letter12 = ""
    @State var letter13 = ""
    @State var letter14 = ""
    @State var letter15 = ""
    @State var word3Submitted = false

    //WORD 4
    @State var letter16 = ""
    @State var letter17 = ""
    @State var letter18 = ""
    @State var letter19 = ""
    @State var letter20 = ""
    @State var word4Submitted = false

    //WORD 5
    @State var letter21 = ""
    @State var letter22 = ""
    @State var letter23 = ""
    @State var letter24 = ""
    @State var letter25 = ""
    @State var word5Submitted = false

    //WORD 6
    @State var letter26 = ""
    @State var letter27 = ""
    @State var letter28 = ""
    @State var letter29 = ""
    @State var letter30 = ""
    @State var word6Submitted = false

    @State var correctLetter1 = "T"
    @State var correctLetter2 = "E"
    @State var correctLetter3 = "S"
    @State var correctLetter4 = "T"
    @State var correctLetter5 = "S"
    
    @State var gameWon = false
    //TODO: Change so that the color of the letter only shows upon submission
    //TODO: Move from one letter in the row to the next once finished typing
    @FocusState var focusedField: Int?
    var body: some View {
        ZStack{
            Color(red: 34/255, green: 34/255, blue: 34/255).ignoresSafeArea()
            VStack{
                Text("GHW Games: Wordle!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 60)
                    .padding(.top, 40)
                Word(letter1: $letter1, letter2: $letter2, letter3: $letter3, letter4: $letter4, letter5: $letter5, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word1Submitted, gameWon: $gameWon)
                if word1Submitted && !gameWon{
                    Word(letter1: $letter6, letter2: $letter7, letter3: $letter8, letter4: $letter9, letter5: $letter10, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word2Submitted, gameWon: $gameWon)
                }
                if word2Submitted && !gameWon{
                    Word(letter1: $letter11, letter2: $letter12, letter3: $letter13, letter4: $letter14, letter5: $letter15, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word3Submitted, gameWon: $gameWon)
                }
                if word3Submitted && !gameWon{
                    Word(letter1: $letter16, letter2: $letter17, letter3: $letter18, letter4: $letter19, letter5: $letter20, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word4Submitted, gameWon: $gameWon)
                }
                if word4Submitted && !gameWon{
                    Word(letter1: $letter21, letter2: $letter22, letter3: $letter23, letter4: $letter24, letter5: $letter25, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word5Submitted, gameWon: $gameWon)
                }
                if word5Submitted && !gameWon{
                    Word(letter1: $letter26, letter2: $letter27, letter3: $letter28, letter4: $letter29, letter5: $letter30, correctLetter1: $correctLetter1, correctLetter2: $correctLetter2, correctLetter3: $correctLetter3, correctLetter4: $correctLetter4, correctLetter5: $correctLetter5, word1Submitted: $word6Submitted, gameWon: $gameWon)
                }
                if gameWon{
                    Text("Thanks for playing!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Come back tomorrow for a new Wordle!")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct Word : View{
    @Binding var letter1 : String
    @Binding var letter2 : String
    @Binding var letter3 : String
    @Binding var letter4 : String
    @Binding var letter5 : String
    @Binding var correctLetter1 : String
    @Binding var correctLetter2 : String
    @Binding var correctLetter3 : String
    @Binding var correctLetter4 : String
    @Binding var correctLetter5 : String
    @Binding var word1Submitted : Bool
    @Binding var gameWon: Bool
    var body: some View {
        if !gameWon {
            HStack{
                TextField("", text: $letter1)
                    .frame(width: 58, height: 58)
                    .onReceive(letter1.publisher.collect()) { self.letter1 = String($0.prefix(1))
                    }
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Group {
                        if letter1.isEmpty { Color(red: 34/255, green: 34/255, blue: 34/255) }
                        else if word1Submitted && letter1 == correctLetter1 {
                            Color(red: 1/255, green: 154/255, blue: 1/255)
                        }
                        else if word1Submitted && (letter1 == correctLetter2 || letter1 == correctLetter3 || letter1 == correctLetter4 || letter1 == correctLetter5) {
                            Color(red: 255/255, green: 196/255, blue: 37/255)
                        }
                        else{
                            Color(red: 34/255, green: 34/255, blue: 34/255)
                        }
                    })
                    .padding(.all, 2).background(.gray)
                TextField("", text: $letter2)
                    .frame(width: 58, height: 58)
                    .onReceive(letter2.publisher.collect()) { self.letter2 = String($0.prefix(1))
                    }
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Group {
                        if letter2.isEmpty { Color(red: 34/255, green: 34/255, blue: 34/255) }
                        else if word1Submitted && letter2 == correctLetter2 {
                            Color(red: 1/255, green: 154/255, blue: 1/255)
                        }
                        else if word1Submitted && (letter2 == correctLetter1 || letter2 == correctLetter3 || letter2 == correctLetter4 || letter2 == correctLetter5) {
                            Color(red: 255/255, green: 196/255, blue: 37/255)
                        }
                        else{
                            Color(red: 34/255, green: 34/255, blue: 34/255)
                        }
                    })
                    .padding(.all, 2).background(.gray)
                TextField("", text: $letter3)
                    .frame(width: 58, height: 58)
                    .onReceive(letter3.publisher.collect()) { self.letter3 = String($0.prefix(1))
                    }
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Group {
                        if letter3.isEmpty { Color(red: 34/255, green: 34/255, blue: 34/255) }
                        else if word1Submitted && letter3 == correctLetter3 {
                            Color(red: 1/255, green: 154/255, blue: 1/255)
                        }
                        else if word1Submitted && (letter3 == correctLetter2 || letter3 == correctLetter1 || letter3 == correctLetter4 || letter3 == correctLetter5) {
                            Color(red: 255/255, green: 196/255, blue: 37/255)
                        }
                        else{
                            Color(red: 34/255, green: 34/255, blue: 34/255)
                        }
                    })
                    .padding(.all, 2).background(.gray)
                TextField("", text: $letter4)
                    .frame(width: 58, height: 58)
                    .onReceive(letter4.publisher.collect()) { self.letter4 = String($0.prefix(1))
                    }
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Group {
                        if letter4.isEmpty { Color(red: 34/255, green: 34/255, blue: 34/255) }
                        else if word1Submitted && letter4 == correctLetter4 {
                            Color(red: 1/255, green: 154/255, blue: 1/255)
                        }
                        else if  word1Submitted && (letter4 == correctLetter2 || letter4 == correctLetter3 || letter4 == correctLetter1 || letter4 == correctLetter5){
                            Color(red: 255/255, green: 196/255, blue: 37/255)
                        }
                        else{
                            Color(red: 34/255, green: 34/255, blue: 34/255)
                        }
                    })
                    .padding(.all, 2).background(.gray)
                TextField("", text: $letter5)
                    .frame(width: 58, height: 58)
                    .onReceive(letter5.publisher.collect()) { self.letter5 = String($0.prefix(1))
                    }
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Group {
                        if letter5.isEmpty { Color(red: 34/255, green: 34/255, blue: 34/255) }
                        else if word1Submitted && letter5 == correctLetter5 {
                            Color(red: 1/255, green: 154/255, blue: 1/255)
                        }
                        else if word1Submitted && (letter5 == correctLetter2 || letter5 == correctLetter3 || letter5 == correctLetter4 || letter5 == correctLetter5){
                            Color(red: 255/255, green: 196/255, blue: 37/255)
                        }
                        else{
                            Color(red: 34/255, green: 34/255, blue: 34/255)
                        }
                    })
                    .padding(.all, 2).background(.gray)
                
            }
            if !letter1.isEmpty && !letter2.isEmpty && !letter3.isEmpty && !letter4.isEmpty && !letter5.isEmpty{
                Button("Submit word!") {
                    word1Submitted = true
                }
                .padding(.all, 5)
                .background(Color(red: 1/255, green: 154/255, blue: 1/255))
                .foregroundColor(.white)
                .cornerRadius(5)
                .padding(.top, word1Submitted ? -25 : 15)
                .opacity(word1Submitted ? 0 : 1)
            }
            if word1Submitted && letter1 == correctLetter1 && letter2 == correctLetter2 && letter3 == correctLetter3 && letter4 == correctLetter4 && letter5 == correctLetter5{
                Text("Completed Wordle!")
                    .onAppear{
                        gameWon = true
                    }
                    .padding(.all, 5)
                    .background(Color(red: 1/255, green: 154/255, blue: 1/255))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .padding(.top, 15)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
