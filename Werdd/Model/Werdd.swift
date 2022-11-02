//
//  Werdd.swift
//  Werdd
//
//  Created by Paul Park on 10/31/22.
//

import Foundation

struct Werdd {
    var name: String
    var partOfSpeech: String
    var definition: String
    
    init(name: String, partOfSpeech: String, definition: String) {
        self.name = name
        self.partOfSpeech = partOfSpeech
        self.definition = definition
    }
}

struct Werdds {
    var data: [Werdd] = [
        Werdd(name: "Programming", partOfSpeech: "noun", definition: "creating a sequence of instructions to enable the computer to do something"),
        Werdd(name: "Abbot", partOfSpeech: "noun", definition: "the superior of a monastery for men"),
        Werdd(name: "Mauve", partOfSpeech: "noun", definition: "a moderate purple, violet, or lilac color"),
        Werdd(name: "Stochastic", partOfSpeech: "adjective", definition: "involving a random variable"),
        Werdd(name: "Stilt", partOfSpeech: "noun", definition: "one of two poles each with a rest or strap for the foot used to elevate the wearer above the ground in walking"),
        Werdd(name: "Abbreviation", partOfSpeech: "noun", definition: "a shortened form of a written word or phrase used in place of the whole word or phrase"),
        Werdd(name: "Avuncular", partOfSpeech: "adjective", definition: "suggestive of an uncle especially in kindliness or geniality"),
        Werdd(name: "Spiel", partOfSpeech: "verb", definition: "to play music"),
        Werdd(name: "Writhe", partOfSpeech: "verb", definition: "to twist into coils or folds"),
        Werdd(name: "Transmogrify", partOfSpeech: "verb", definition: "to change or alter greatly and often with grotesque or humorous effect"),
        Werdd(name: "Frenetic", partOfSpeech: "adjective", definition: "marked by fast and energetic, disordered, or anxiety-driven activity"),
    ]
}
