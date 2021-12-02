//
//  TrapezoidView.swift
//  FiguresHelper
//
//  Created by Berk Bozkurt on 2021-12-01.
//

import SwiftUI

struct TrapezoidView: View {
    @State var heightValue: Double = 50.00
    @State var sideAValue: Double = 50.00
    @State var sideBValue: Double = 50.00

    var area: Double {
        return sideAValue + sideBValue * heightValue / 2
    
}
    var body: some View {
        ScrollView {
        VStack(alignment: .leading, spacing: 20){
            Text("Side A:")
                .bold()
        Group {
            HStack {
                Spacer()
                Text("\(sideAValue)")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Slider(value: $sideAValue,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Side A")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
           
            
            Text("Side B:")
                .bold()
            HStack {
                Spacer()
                Text("\(sideBValue)")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Slider(value: $sideBValue,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Side B")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
           
           
            Text("Height:")
                .bold()
            HStack {
                Spacer()
                Text("\(heightValue)")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Slider(value: $heightValue,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                Text("Height")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   maximumValueLabel: {
                Text("100.0")
            })
        }
            Text("Area:")
                .bold()
            Text("\(area)")
            .font(.title2)
        
        }
        .navigationTitle("Trapezoid")
        .padding()
        }
    }
}
struct TrapezoidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TrapezoidView()
        }
    }
}
