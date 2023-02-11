//
//  HeaderView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct HeaderView: View {
    @Binding var fontSize: Double
    @Binding var noteContents: String
    var body: some View {
        VStack {
            TitelView()
            ButtonView(fontSize: $fontSize, noteContents: $noteContents)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fontSize: .constant(14.0), noteContents: .constant("Lorem ipsum dolor sit amet."))
    }
}
