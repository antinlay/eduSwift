//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Janiece Eleonor on 10/26/23.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    var body: some Scene {
//        @StateObject var defaultDocument = EmojiArtDocument()
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
