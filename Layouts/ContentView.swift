//
//  ContentView.swift
//  Layouts
//
//  Created by Jazmine Singh on 9/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                   
                
                Spacer()
                
                Text(message)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.darkPink)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 2)
                    .padding()
                    
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 150.0)
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width*2/3, height: 1)
                
                HStack {
                    Button("Awesome"){
                        message = "You are Awesome"
                    }
                    Spacer()
                    
                    Button("Great"){
                        message = "You are Great"
                        
                    }
                }
                .buttonStyle(.borderedProminent)
    //            .border(.purple, width: 5)
                .padding()
                
                Rectangle()
                    .frame(height: 0)
                    .background(.indigo)
                
            }
        }
           
        
    }
}

#Preview {
    ContentView()
}
