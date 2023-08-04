//
//  ContentView.swift
//  interactive creation
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @State var starter = "Hey, What's you name?"
    @State var name = ""
    @State var favMovie = "What is your favorite movie?"
    @State var movie = ""
    @State var image = ""
    var body: some View {
        VStack {
           Text(starter)
                .font(.title)
                .foregroundColor(Color(hue: 0.79, saturation: 0.37, brightness: 0.865))
        
            TextField("Type your name here... ", text: $name)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width: 1)
                .padding()
            Button("Submit") {
                print(name)
                starter = "Welcome \(name)!"
            }//button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.886, saturation: 0.362, brightness: 0.951))
            Text(favMovie)
                 .font(.title)
                 .foregroundColor(Color(hue: 0.79, saturation: 0.37, brightness: 0.865))
         
             TextField("Type your movie here... ", text: $movie)
                 .multilineTextAlignment(.center)
                 .font(.title2)
                 .border(Color.gray, width: 1)
                 .padding()
             Button("Submit") {
                 print(movie)
                 favMovie = "Ouu i have to add \(movie) to my list :)"
             }//button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.886, saturation: 0.362, brightness: 0.951))
            
            
        }//vstack
        .padding()
    }//some view
}//struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
