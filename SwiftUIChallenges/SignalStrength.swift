//
//  SignalStrength.swift
//  A
//
//  Created by Ali Murad on 10/01/2023.
//

import SwiftUI

struct SignalStrength: View {
    var body: some View {
        SignalStrengthView(bars: 3, totalBars: 5)
            .font(.largeTitle)
    }
}


struct SignalStrengthView: View {
    var bars: Int
    var totalBars: Int
    var body: some View {
        HStack {
            Text("NNNNNN").hidden().overlay {
                SignalStrengthIndicator(bars: bars, totalBars: totalBars)
            }
            Text("-75 dB")
        }
    }
}


struct SignalStrength_Previews: PreviewProvider {
    static var previews: some View {
        SignalStrength()
    }
}

struct SignalStrengthIndicator: View {
    var bars: Int
    var totalBars: Int
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(0 ..< totalBars) { index in
                RoundedRectangle(cornerRadius: 10)
                    .divide(index: CGFloat(index + 1) / CGFloat(self.totalBars))
                    .fill(getBackgroundColor(index: index, bars: bars))
                
                
                
            }
        }
    }
    func getBackgroundColor(index: Int, bars: Int) -> Color {
        return index < bars ? .black : .gray
    }
}



extension Shape {
    func divide(index: CGFloat) -> Divided<Self> {
        return Divided(index: index, shape: self)
    }
}

struct Divided<S: Shape>: Shape {
    var index: CGFloat
    var shape: S
    
    func path(in rect: CGRect) -> Path {
        shape.path(in: rect.divided(atDistance: index * rect.height, from:     .maxYEdge).slice)
    }
}
