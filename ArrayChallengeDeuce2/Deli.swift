//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            if line[0] == name {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        let oldLine = line
        if !line.isEmpty {
            line.removeFirst()
        }
        if oldLine.isEmpty {
            return "There is no one to be served."
        } else {
            return "Now serving \(oldLine[0])!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var finalString: String
        var listArray: [String] = ["The line is:"]
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, _) in line.enumerated() {
                listArray.append("\n\(index + 1). \(line[index])")
            }
            finalString = listArray.joined(separator: "")
            return finalString
        }

    }
    
}
