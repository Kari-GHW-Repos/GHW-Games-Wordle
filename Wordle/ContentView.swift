//
//  ContentView.swift
//  Wordle
//
//  Created by Kari on 5/1/23.
//

import SwiftUI

var words = ["About","Alert","Argue","Beach", "Above","Alike","Arise","Began", "Abuse","Alive","Array","Begin","Actor","Allow","Aside","Begun", "Acute","Alone","Asset","Being", "Admit","Along","Audio","Below", "Adopt","Alter","Audit","Bench", "Adult","Among","Avoid","Billy", "After","Anger","Award","Birth", "Again","Angle","Aware","Black", "Agent","Angry","Badly","Blame", "Agree","Apart","Baker","Blind", "Ahead","Apple","Bases","Block", "Alarm","Apply","Basic","Blood", "Album","Arena","Basis","Board", "Boost","Buyer","China","Cover", "Booth","Cable","Chose","Craft", "Bound","Calif","Civil","Crash", "Brain","Carry","Claim","Cream", "Brand","Catch","Class","Crime","Bread","Cause","Clean","Cross","Break","Chain","Clear","Crowd", "Breed","Chair","Click","Crown", "Brief","Chart","Clock","Curve", "Bring","Chase","Close","Cycle", "Broad","Cheap","Coach","Daily", "Broke","Check","Coast","Dance", "Brown","Chest","Could","Dated","Build","Chief","Count","Dealt","Built","Child","Court","Death","Debut","Entry","Forth","Group","Delay","Equal","Forty","Grown","Depth","Error","Forum","Guard","Doing","Event","Found","Guess","Doubt","Every","Frame","Guest","Dozen","Exact","Frank","Guide", "Draft","Exist","Fraud","Happy", "Drama","Extra","Fresh","Harry", "Drawn","Faith","Front","Heart","Dream","False","Fruit","Heavy", "Dress","Fault","Fully","Hence","Drill","Fiber","Funny","Night","Drink","Field","Giant","Horse", "Drive","Fifth","Given","Hotel", "Drove","Fifty","Glass","House", "Dying","Fight","Globe","Human","Eager","Final","Going","Ideal", "Early","First","Grace","Image", "Earth","Fixed","Grade","Index", "Eight","Flash","Grand","Inner", "Elite","Fleet","Grant","Input","Empty","Floor","Grass","Issue", "Enemy","Fluid","Great","Irony", "Enjoy","Focus","Green","Juice","Enter","Force","Gross","Joint", "Judge","Metal","Media","Newly", "Known","Local","Might","Noise", "Label","Logic","Minor","North", "Large","Loose","Minus","Noted", "Laser","Lower","Mixed","Novel", "Later","Lucky","Model","Nurse", "Laugh","Lunch","Money","Occur", "Layer","Lying","Month","Ocean", "Learn","Magic","Moral","Offer", "Lease","Major","Motor","Often", "Least","Maker","Mount","Order", "Leave","March","Mouse","Other", "Legal","Music","Mouth","Ought", "Level","Match","Movie","Paint", "Light","Mayor","Needs","Paper", "Limit","Meant","Never","Party", "Peace","Power","Radio","Round", "Panel","Press","Raise","Route","Phase","Price","Range","Royal","Phone","Pride","Rapid","Rural", "Photo","Prime","Ratio","Scale", "Piece","Print","Reach","Scene", "Pilot","Prior","Ready","Scope", "Pitch","Prize","Refer","Score","Place","Proof","Right","Sense", "Plain","Proud","Rival","Serve", "Plane","Prove","River","Seven","Plant","Queen","Quick","Shall", "Plate","Sixth","Stand","Shape", "Point","Quiet","Roman","Share", "Pound","Quite","Rough","Sharp", "Sheet","Spare","Style","Times", "Shelf","Speak","Sugar","Tired", "Shell","Speed","Suite","Title","Shift","Spend","Super","Today", "Shirt","Spent","Sweet","Topic","Shock","Split","Table","Total", "Shoot","Spoke","Taken","Touch", "Short","Sport","Taste","Tough", "Shown","Staff","Taxes","Tower","Sight","Stage","Teach","Track", "Since","Stake","Teeth","Trade", "Sixty","Start","Texas","Treat", "Sized","State","Thank","Trend","Steak", "Skill","Steam","Theft","Trial", "Sleep","Steel","Their","Tried", "Slide","Stick","Theme","Tries", "Small","Still","There","Truck", "Smart","Stock","These","Truly", "Smile","Stone","Thick","Trust", "Smith","Stood","Thing","Truth","Smoke","Store","Think","Twice", "Solid","Storm","Third","Under","Solve","Story","Those","Undue", "Sorry","Strip","Three","Union", "Sound","Stuck","Threw","Unity", "South","Study","Throw","Until","Space","Stuff","Tight","Upper", "Upset","Whole","Waste","Wound", "Urban","Whose","Watch","Write", "Usage","Woman","Water","Wrong", "Usual","Train","Wheel","Wrote","Valid","World","Where","Yield", "Value","Worry","Which","Young", "Video","Worse","While","Youth","Virus","Worst","White","Worth","Visit","Would","Vital","Voice"]

var randomWord = words.randomElement()!.uppercased()
var randomLetter1 = String(randomWord[randomWord.startIndex])
var randomLetter2 = String(randomWord[randomWord.index(randomWord.startIndex, offsetBy: 1)])
var randomLetter3 = String(randomWord[randomWord.index(randomWord.startIndex, offsetBy: 2)])
var randomLetter4 = String(randomWord[randomWord.index(randomWord.startIndex, offsetBy: 3)])
var randomLetter5 = String(randomWord[randomWord.index(randomWord.startIndex, offsetBy: 4)])

//TODO: Add a working keyboard on the bottom of the screen OR display what letters have already been used
//TODO: Add a button to connect the watch app back to the phone app (Watch sessions)
//TODO: Reset the new word only once a day, and not upon app launch (Core Data – store new word at 12am GMT OR add a server that determines the new word)
//TODO: Use a word API over a hard-coded word array
//TODO: Happy GHW Games!!

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

    @State var correctLetter1 = randomLetter1
    @State var correctLetter2 = randomLetter2
    @State var correctLetter3 = randomLetter3
    @State var correctLetter4 = randomLetter4
    @State var correctLetter5 = randomLetter5
    
    @State var gameWon = false
    @FocusState var focusedField: Int?

    var body: some View {
        ZStack{
            Color(red: 34/255, green: 34/255, blue: 34/255).ignoresSafeArea()
            VStack{
                Text("GHW Games: Infinite Wordle!")
                    .font(.title2)
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
    @State var attempts: Int = 0

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
    
    @FocusState private var focusedField: Field?
    enum Field: Int, Hashable {
       case letter1
       case letter2
       case letter3
       case letter4
       case letter5
    }
    var body: some View {
        if !gameWon {
            HStack{
                TextField("", text: $letter1)
                    .frame(width: 58, height: 58)
                    .onReceive(letter1.publisher.collect()) { self.letter1 = String($0.prefix(1))
                        self.focusNextField($focusedField)
                    }
                    .focused($focusedField, equals: .letter1)
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
                    .onReceive(letter2.publisher.collect()) {
                        self.letter2 = String($0.prefix(1))
                        self.focusNextField($focusedField)
                    }
                    .focused($focusedField, equals: .letter2)
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
                        self.focusNextField($focusedField)
                    }
                    .focused($focusedField, equals: .letter3)
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
                        self.focusNextField($focusedField)
                    }
                    .focused($focusedField, equals: .letter4)
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
                    .focused($focusedField, equals: .letter5)
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
                    print("letter1:", correctLetter1)
                    print("letter2:",correctLetter2)
                    print("letter3:",correctLetter3)
                    print("letter4:",correctLetter4)
                    print("letter5:",correctLetter5)

                    if determineValidity(word: letter1 + letter2 + letter3 + letter4 + letter5) {
                        word1Submitted = true
                    }
                    else{
                        withAnimation(.default) {
                            self.attempts += 1
                        }
                    }
                }
                .modifier(Shake(animatableData: CGFloat(attempts)))
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
    func determineValidity(word: String) -> Bool{
        let newWord = word.capitalized(with: Locale.current)
        return words.contains(newWord)
    }
    func focusNextField<F: RawRepresentable>(_ field: FocusState<F?>.Binding) where F.RawValue == Int {
        guard let currentValue = field.wrappedValue else { return }
        let nextValue = currentValue.rawValue + 1
        if let newValue = F.init(rawValue: nextValue) {
            field.wrappedValue = newValue
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
            amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
            y: 0))
    }
}
