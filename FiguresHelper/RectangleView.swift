//
//  RectangleView.swift
//  FiguresHelper
//
//  Created by Berk Bozkurt on 2021-12-01.
//

import SwiftUI

struct RectangleView: View {
    @State var lengthValue: Double = 50.00
    @State var widthValue: Double = 50.00
    
    var area: Double {
        return lengthValue * widthValue
    }
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Length:")
                .bold()
            HStack {
                Spacer()
                Text("\(lengthValue)")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Slider(value: $lengthValue,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Length")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            Text("Width:")
                .bold()
            HStack {
                Spacer()
                Text("\(widthValue)")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Slider(value: $widthValue,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Width")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
            Text("Area:")
                .bold()
            
            Text("\(area)")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Rectangle")
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RectangleView()
        }
    }
}
