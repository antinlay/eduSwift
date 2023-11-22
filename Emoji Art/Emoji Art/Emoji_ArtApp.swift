//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Janiece Eleonor on 10/26/23.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {

        WindowGroup {
            if #available(iOS 16.0, *) {
                EmojiArtDocumentView(document: defaultDocument)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
