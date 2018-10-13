//
//  Bottles.swift
//  NinetyNineBottles
//
//  Created by George Webster on 10/12/18.
//  Copyright © 2018 George Webster. All rights reserved.
//

import Foundation

struct Bottles {
    
    func verse(_ count:Int) -> String {
        switch count {
        case 2:
            return "2 bottles of beer on the wall, 2 bottles of beer.\n"
                + "Take one down and pass it around, 1 bottle of beer on the wall.\n"
        case 1:
            return "1 bottle of beer on the wall, 1 bottle of beer.\n"
                + "Take it down and pass it around, no more bottles of beer on the wall.\n"
        case 0:
            return "No more bottles of beer on the wall, no more bottles of beer.\n"
                + "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        default:
            return "\(count) bottles of beer on the wall, \(count) bottles of beer.\n"
                + "Take one down and pass it around, \(count - 1) bottles of beer on the wall.\n"
        }
    }
    
    func verses(_ start:Int, to end:Int) -> String {
        guard start >= end else { return "" }
        var verses = [String]()
        for x in end...start {
            verses.append(verse(x))
        }
        return verses
            .reversed()
            .joined(separator: "\n")
    }
    
    func song() -> String {
        return verses(99, to: 0)
    }
}
