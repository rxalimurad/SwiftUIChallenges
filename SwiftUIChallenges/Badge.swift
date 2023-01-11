//
//  ContentView.swift
//  A
//
//  Created by Ali Murad on 09/01/2023.
//

import SwiftUI

struct Badge: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Stepper(onIncrement: {
                self.counter += 1
            }, onDecrement: {
                self.counter -= 1
            }, label: { Text("Count")})
            Text("Hello, World!")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray))
                .badge(count: counter)
        }.padding()
    }
}

extension View {
    func badge(count: Int = 0) -> some View {
        self.modifier(BadgeModifier(count: count))
    }
}

struct BadgeModifier: ViewModifier {
    var count: Int
    func body(content: Content) -> some View {
        ZStack(alignment: .topTrailing) {
            content
            ZStack() {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 25)
                
                Text("\(count)")
                    .foregroundColor(.white)
                    .frame(width: 25)
            }
            .offset(CGSize(width: 10, height: -10))
        }
        
    }
    
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
