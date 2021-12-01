//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Berk Bozkurt on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Circle")
                .font(.title2)
                .padding()
            Text("Radius")
                .font(.title3)
                .padding(.leading, 10)
            HStack {
                Spacer()
                Text("25.0")
                Spacer()
            }
            
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            Text("Area")
            
        }
            .navigationTitle("Figures Helper")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
        ContentView()
    }
}
}
