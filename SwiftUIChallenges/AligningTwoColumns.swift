//
//  AligningTwoColumns.swift
//  A
//
//  Created by Ali Murad on 10/01/2023.
//

import SwiftUI


extension Alignment {
    private enum MyAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[VerticalAlignment.center]
        }
    }
    
    
    static var myAlignment: HorizontalAlignment {
        return HorizontalAlignment(MyAlignment.self)
    }
    
    
}



struct AligningTwoColumns: View {
    var body: some View {
        VStack(alignment: Alignment.myAlignment) {
            HStack {
                Text("100 m").font(Font.body.bold())
                    .alignmentGuide(Alignment.myAlignment) { d in
                        d[.trailing]
                    }
                Text("Usain Bolt")
                
            }
            HStack {
                Text("5 km").font(Font.body.bold())
                    .alignmentGuide(Alignment.myAlignment) { d in
                        d[.trailing]
                    }
                Text("Joshua Cheptegei")
                
            }
            
            HStack {
                Text("10 km").font(Font.body.bold())
                    .alignmentGuide(Alignment.myAlignment) { d in
                        d[.trailing]
                    }
                Text("Rhonex Kipruto")
                
            }
            HStack {
                Text("Marathon").font(Font.body.bold())
                    .alignmentGuide(Alignment.myAlignment) { d in
                        d[.trailing]
                    }
                Text("Eliud Kipchoge")
                
            }
        }
        
    }
}

struct AligningTwoColumns_Previews: PreviewProvider {
    static var previews: some View {
        AligningTwoColumns()
    }
}
