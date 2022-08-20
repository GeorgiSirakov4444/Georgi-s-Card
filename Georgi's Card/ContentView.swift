//
//  ContentView.swift
//  Georgi's Card
//
//  Created by Georgi Sirakov on 20.08.22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Georgi_s_CardDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(Georgi_s_CardDocument()))
    }
}
