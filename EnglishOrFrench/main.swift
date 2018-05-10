//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here
var expectedLines = 0

while true {
    print("How many lines of text?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let checkedInput = Int(givenInput) else {
        continue
    }
    if checkedInput < 0 || checkedInput > 10000 {
        continue
    }
    expectedLines = checkedInput
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
var frenchLetters = 0
var englishLetters = 0
print("Please enter the \(expectedLines) of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    for letter in givenLine {
        switch letter {
        case "t", "T":
            englishLetters += 1
        case "s", "T":
            frenchLetters += 1
        default:
            break
        }
    }
}

// OUTPUT
// Report results to the user here

if englishLetters > frenchLetters {
    print("This looks like English.")
} else {
    print("This looks like French.")
}

