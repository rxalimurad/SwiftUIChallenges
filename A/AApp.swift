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
                        Divider()
                        Text("Badge")
                        Divider()
                        Badge()
                        Spacer()
                        Divider()
                        Text("SignalStrength")
                        Divider()
                        SignalStrength()
                    }
                    VStack {
                        Divider()
                        Text("TabBar")
                        Divider()
                        TabBarView()
                        Divider()
                        Text("AligningTwoColumns")
                        Divider()
                        AligningTwoColumns()
                    }
                }
            }
        }
    }
}
