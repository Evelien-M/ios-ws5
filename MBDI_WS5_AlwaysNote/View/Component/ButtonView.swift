//
//  ButtonView.swift
//  MBDI_WS5_AlwaysNote
//
//  Created by Evelien Manshanden on 10/02/2023.
//

import SwiftUI

struct ButtonView: View {
    @Binding var fontSize: Double
    @Binding var noteContents: String
    let fontSizeKey = "nl.aavans.alwaysnote.fontsize"
    let fileName = "WS5Notes"
    @State private var showAlert = false
    var body: some View {
        ZStack{
            HStack{
                Button(action: save) {
                    Text("Save")
                }
                .alert( isPresented: $showAlert,
                        content: {Alert(title: Text("Your note has been stored"))})
                Spacer()
            }
            HStack{
                Spacer()
                Button(action: decreaseFont) {
                    Text("a")
                }
                Button(action: increaseFont) {
                    Text("A")
                }
            }
        }
        
        
    }
    
    func save(){
        do {
            let documentDirectory = try FileManager.default.url(
                for: .documentDirectory,
                in: .userDomainMask,
            appropriateFor: nil,
            create: false )
            let fileURL = documentDirectory.appendingPathComponent(fileName)
            try noteContents.write(to: fileURL, atomically: true, encoding: String.Encoding.unicode)
            showAlert = true
        } catch { }
        
            
    }
    
    func decreaseFont() {
        fontSize = max(fontSize - 1.0, 8.0)
        saveFontSize()
    }
    
    func increaseFont() {
        fontSize = max(fontSize + 1.0, 16.0)
        saveFontSize()
    }
    
    func saveFontSize() {
        UserDefaults().set(fontSize, forKey: fontSizeKey)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(fontSize: .constant(14.5),noteContents: .constant("Lorem ipsum dolor sit amet."))
    }
}
