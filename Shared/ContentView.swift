//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 3/7/21.
//

import SwiftUI
/*
 In this project we are binding animation to a button.
 */
struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        print(animationAmount)
        /*
         Since we added non-view code, we need to add return to the VStack. That way Swift know what it is returning.
         */
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            
            Button("Tap Me") {
          //      self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
