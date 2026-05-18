//
//  Word.swift
//  WordList
//
//  Created by 後藤亜有 on 2026/05/15.
//

import SwiftData
@Model
class Word {
    var english: String
    var japanese: String
    init(english: String, japanese: String) {
        self.english = english
        self.japanese = japanese
    }
}
