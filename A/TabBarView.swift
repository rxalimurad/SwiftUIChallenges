//
//  TabBar.swift
//  A
//
//  Created by Ali Murad on 10/01/2023.
//

import SwiftUI

struct TabBarView: View {
    
    
    var body: some View {
        return TabBar(items: [
            (Image(systemName: "tray"), Text("Inbox")),
            (Image(systemName: "archivebox"), Text("Archive")),
            (Image(systemName: "doc.text"), Text("Drafts"))
        ])
        .padding()
    }
}

struct TabBar: View {
    var items: [(Image, Text)]
    @Namespace var nspace
    @State var selectedIndex: Int = 0
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0 ..< items.count) { index in
                VStack(spacing: 10) {
                    items[index].0
                    items[index].1
                    if selectedIndex == index {
                        Color.blue
                            .frame(height: 2)
                            .matchedGeometryEffect(id: "d", in: nspace)
                    } else {
                        Color.clear
                            .frame(height: 2)
                    }
                }.animation(.spring(), value: selectedIndex)
                
                    .onTapGesture {
                        selectedIndex = index
                    }
                    .foregroundColor(selectedIndex == index ? .blue : .black)
                
                
                
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
