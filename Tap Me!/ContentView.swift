//
//  ContentView.swift
//  Tap Me!
//
//  Created by Dheeraj Bhavsar on 07/09/19.
//  Copyright © 2019 Dheeraj Bhavsar. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var count = 0

    var resetButton: some View {
        Button(action: {
            self.count = 0
        }) {
            Image(systemName: "arrow.clockwise.circle")
                .imageScale(.large)
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack (spacing: 16) {
                    Text("Tapped")
                        .font(.subheadline)

                    Text("\(count)")
                        .font(.largeTitle)

                    Text("times")
                        .font(.subheadline)
                }

                Button(action: {
                    self.buttonTapped()
                }) {
                    Text("Tap Me")
                        .font(.title)
                }
            }
            .navigationBarItems(trailing: resetButton)
            .navigationBarTitle(Text("Tap Me! App"))
        }
    }
    
    func buttonTapped() {
        self.count += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
