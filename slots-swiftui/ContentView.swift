//
//  ContentView.swift
//  slots-swiftui
//
//  Created by Prasi Aravind on 8/24/22.
//

import SwiftUI

struct ContentView: View {
    @State private var creditAmt = 1000
//    @State private var image1 = "cherry"
//    @State private var image2 = "apple"
//    @State private var image3 = "star"
    @State private var slotOneFinished = "cherry"
    @State private var slotTwoFinished = "apple"
    @State private var slotThreeFinished = "star"
    
    
    var body: some View {
        VStack{
            Spacer()
            Text("SwiftUI Slots!")
            Spacer()
            Text("Your Credits: " + String(creditAmt))
            Spacer()
            HStack{
                Image(slotOneFinished).resizable().aspectRatio(contentMode: .fit)
                Image(slotTwoFinished).resizable().aspectRatio(contentMode: .fit)
                Image(slotThreeFinished).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button(action: {
                let images = ["apple", "cherry", "star"]
                //If all three images are the same, credits += 100, else, credits -= 25
//                let imgPrefix = "image"
//
                //
                //                 slotOneFinished = imgPrefix + String(spinOne)
                //                 slotTwoFinished = imgPrefix + String(spinTwo)
                //                 slotThreeFinished = imgPrefix + String(spinThree)
                let spinOne = Int.random(in: 0...2)
                let spinTwo = Int.random(in: 0...2)
                let spinThree = Int.random(in: 0...2)
                
                slotOneFinished = images[spinOne]
                slotTwoFinished = images[spinTwo]
                slotThreeFinished = images[spinThree]
                
                if (spinOne == spinTwo && spinTwo == spinThree){
                    creditAmt += 100
                }
                else{
                    creditAmt -= 25
                }
            
            }) {
                Text("Spin It").padding()
            }.foregroundColor(.white).background(Color(red: 1.0, green: 0.25, blue: 0.35, opacity: 1.0)).cornerRadius(15)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
