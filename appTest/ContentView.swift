//
//  ContentView.swift
//  appTest
//
//  Created by juan gabriel lopez on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.center,spacing: 10) {//solo puede tener 1ovistas internas
            Image(systemName: "globe").imageScale(.large).foregroundColor(.accentColor)
            Text("Gatos!").font(.title)
            Spacer()
            Image("gato").clipShape(Circle()).overlay {
                           Circle().stroke(.gray, lineWidth: 4)
            }
            Text("My name is MICHI!!").font(.title).foregroundColor(Color.blue).padding()
            Text("hi i'm Sad!!").font(.title).foregroundColor(Color.green).padding()
        }.background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
