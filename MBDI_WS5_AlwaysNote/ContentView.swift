//
//  ContentView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var fontSize = 17.0
    @State var noteContents = "Lorem ipsum dolor sit amet."
    let fontSizeKey = "nl.aavans.alwaysnote.fontsize"
    let fileName = "WS5Notes"
    var body: some View {
        VStack {
            HeaderView(fontSize: $fontSize, noteContents: $noteContents)
            EditorView(fontSize: $fontSize, noteContents: $noteContents)
        }.onAppear { initView() }
        .padding()
    }
    
    func initView() {
     //   UserDefaults.standard.register(defaults: [fontSizeKey: fontSize])
        self.fontSize = CGFloat(UserDefaults.standard.double(forKey: fontSizeKey))
        
        do {
            let documentDirectory = try FileManager.default.url(
                for: .documentDirectory,
                in: .userDomainMask,
            appropriateFor: nil,
            create: false )
            let fileURL = documentDirectory.appendingPathComponent(fileName)
            noteContents = try String(contentsOf: fileURL)
        } catch { }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
