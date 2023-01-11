//
//  AApp.swift
//  A
//
//  Created by Ali Murad on 09/01/2023.
//

import SwiftUI

@main
struct AApp: App {
 
    var body: some Scene {
        WindowGroup {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    VStack {
                        headerView(title: "Badge")
                        Badge()
                        headerView(title: "SignalStrength")
                        SignalStrength()
                        headerView(title: "TabBar")
                        TabBarView()
                        headerView(title: "AligningTwoColumns")
                        AligningTwoColumns()
                        headerView(title: "AnimateLine")
                        AnimateLine()
                        
                    }
                    VStack {
                        Spacer(minLength: 1000)
                    }
                }
            }
        }
    }
    
    @ViewBuilder func headerView(title: String) -> some View {
        Text(title)
            .font(.system(.title))
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.black)
            .padding()
            .cornerRadius(10)
        
    }
    
}
