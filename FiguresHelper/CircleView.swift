//
//  FiguresHelperView.swift
//  FiguresHelper
//
//  Created by Berk Bozkurt on 2021-12-01.
//

import SwiftUI


struct CircleView: View {
    
    // These are stored propreties.
    // "radius" is the name
    // "Double" is the data type
    // By adding = 15.00 we are providing a default value.
    // input - we need this form the user we want SwiftUI to update the user interface based on what the user selects.
    // To do this, we use a special piece of syntax
    // called a "proprety wrapper"
    // @State
    // This marks the propety as being one that SwiftUI should "watch" for changes
    @State var radius: Double = 15.00
    
    
    // These are computed propreties.
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                // The syntax of $ says to use this proprety (radius) and BIND IT to this control
                // To "bind" means that when the control changes, the proprety's value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area)")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
