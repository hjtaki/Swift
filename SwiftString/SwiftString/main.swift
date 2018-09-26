//
//  main.swift
//  SwiftString
//
//  Created by Alex Jintak Han on 2018-09-25.
//  Copyright © 2018 AlexHan. All rights reserved.
//

import Foundation

let names = """
One
Two
Three
"""
print(names)

var word = "cafe"
print(" \(word) has : \(word.count)")

word += "\u{301}"
print(" \(word) has : \(word.count)")


let greeting = "Guren Tag!"

print(greeting[greeting.startIndex])
//G
print(greeting[greeting.index(before: greeting.endIndex)])
//!
print(greeting[greeting.index(after: greeting.startIndex)])
//u
print(greeting[greeting.index(greeting.startIndex,offsetBy:7)])
//a

for index in greeting.indices{
    print("\(greeting[index]) ",terminator:"")
}
