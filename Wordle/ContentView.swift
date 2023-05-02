//
//  ContentView.swift
//  Wordle
//
//  Created by Kari on 5/1/23.
//

import SwiftUI

struct ContentView: View {
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
                    HStack{
                        TextField("", text: $letter1)
//                            .focused($focusedFieldz)
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
                        if letter1 == correctLetter1 && letter2 == correctLetter2 && letter3 == correctLetter3 && letter4 == correctLetter4 && letter5 == correctLetter5{
//                            Alert(title: "Congrats!", message: "You have successfully completed today's Wordle.", dismissButton: .none)
                        }
                    }
                if !letter1.isEmpty && !letter2.isEmpty && !letter3.isEmpty && !letter4.isEmpty && !letter5.isEmpty{
                    Button("Submit word!") {
                        word1Submitted = true
                    }
                    .padding(.all, 5)
                    .background(Color(red: 1/255, green: 154/255, blue: 1/255))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .padding(.top, 15)
                }
                Spacer()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
