//
//  AnimateLine.swift
//  A
//
//  Created by Ali Murad on 11/01/2023.
//

import SwiftUI

let p1 = CGPoint(x: 50, y: 50)
let p2 = CGPoint(x: 100, y: 25)
let p3 = CGPoint(x: 100, y: 100)


struct AnimateLine: View {
    @State var toggle = false
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation {
                    self.toggle.toggle()
                }
            }
            LineShape(start: toggle ? p1 : p2, end: p3)
                .stroke(Color.black, lineWidth: 2)
        }
       
    }
}


struct LineShape: Shape {
    var start, end: CGPoint
    func path(in rect: CGRect) -> Path {
        var p = Path()
        p.move(to: start)
        p.addLine(to: end)
        return p
    }
}
extension LineShape {
    var animatableData: AnimatablePair<CGPoint.AnimatableData, CGPoint.AnimatableData> {
        get { AnimatablePair(start.animatableData, end.animatableData) }
        set { (start.animatableData, end.animatableData) = (newValue.first, newValue.second)
        }
        
    }
}

struct AnimateLine_Previews: PreviewProvider {
    static var previews: some View {
        AnimateLine()
    }
}

