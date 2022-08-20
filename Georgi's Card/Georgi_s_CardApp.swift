//
//  Georgi_s_CardApp.swift
//  Georgi's Card
//
//  Created by Georgi Sirakov on 20.08.22.
//

import SwiftUI

@main
struct Georgi_s_CardApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Georgi_s_CardDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
