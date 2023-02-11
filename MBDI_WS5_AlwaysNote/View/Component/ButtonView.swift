//
//  ButtonView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct ButtonView: View {
    @Binding var fontSize: Double
    var body: some View {
        HStack{
            Button(action: decreaseFont) {
                Text("a")
            }
        }
        
        
    }
    
 //   func decreaseFont() { fontSize = max(fontSize - 1.0, 8.0)}
    func decreaseFont() {
        print("a")
        fontSize = 20.0
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(fontSize: .constant(14.5))
    }
}
