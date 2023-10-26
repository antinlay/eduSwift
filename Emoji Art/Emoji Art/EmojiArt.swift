//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Janiece Eleonor on 10/26/23.
//

import Foundation

struct EmojiArt {
    var background: URL?
    var emojis = [Emoji]()
    
    struct Emoji {
        let string: String
        var position: Position
        var size: Int
        
        struct Position {
            var x: Int
            var y: Int
        }
    }
}
