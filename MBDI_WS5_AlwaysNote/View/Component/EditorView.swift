//
//  EditorView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct EditorView: View {
    @State var noteContents = "Lorem ipsum dolor sit amet."
    @State var fontname = "Arial"
    @Binding var fontSize: Double
    
    var body: some View {
        TextEditor(text: $noteContents)
            .padding()
            .font(.custom(fontname, size: CGFloat(fontSize)))
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView(fontSize: .constant(14.0))
    }
}
