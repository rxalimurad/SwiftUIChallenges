//
//  AligningTwoColumns.swift
//  A
//
//  Created by Ali Murad on 10/01/2023.
//

import SwiftUI

struct AligningTwoColumns: View {
    var body: some View {
        VStack {
            HStack {
                Text("100 m").font(Font.body.bold())
                Text("Usain Boltd")
            }.alignmentGuide(.bottom) { d in
                d[HorizontalAlignment.center]
            }

            
            HStack {
                Text("5 km").font(Font.body.bold())
                Text("Joshua Cheptegei")
                
            }
            VStack(alignment: .leading) {
                Text("Hello, world!")
                Text("This is a longer line of text")
            }
            
            //            HStack {
            //                Text("10 km").font(Font.body.bold())
            //                Text("Rhonex Kipruto")
            //            }
            //            HStack {
            //                Text("Marathon").font(Font.body.bold())
            //                Text("Eliud Kipchoge")
            //            }
            
        }
    }
}

struct AligningTwoColumns_Previews: PreviewProvider {
    static var previews: some View {
        AligningTwoColumns()
    }
}
