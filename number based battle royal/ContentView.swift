//
//  ContentView.swift
//  number based battle royal
//
//  Created by PMStudent on 10/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 4
    @State private var randNum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0

    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Randomize the randNum + randNum2 state properties
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                    // Update scores
                    if self.randNum1 > self.randNum2 {
                        self.score1 += 1
                    }
                    else if self.randNum2 > self.randNum1 {
                        self.score2 += 1
                    }
                    
                }) {
                    
                    Image("dealbutton")
                        .renderingMode(.original)
                    
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score1))
                        
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .bold()
                            .padding(.bottom, 20.0)
                        Text(String(score2))
                        
                    }
                    .foregroundColor(.white)
                    Spacer()
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
