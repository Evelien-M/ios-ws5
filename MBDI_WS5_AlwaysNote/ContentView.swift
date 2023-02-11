//
//  ContentView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var fontSize = 17.0
    var body: some View {
        VStack {
            HeaderView(fontSize: $fontSize)
            EditorView(fontSize: $fontSize)
        }
        .padding()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
