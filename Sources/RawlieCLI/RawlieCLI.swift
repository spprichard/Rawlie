//
//  RawlieCLI.swift
//  Rawlie
//
//  Created by Steven Prichard on 10/31/18.
//

import Foundation
import SwiftCLI


public class RawlieCLI {
    public static let name = "rawlie"
    public static let description = "Rawlie is a tool to help you build, test, and play with Data Team tools. She is also my dog 🐶"
    
    public init() {}
    
    public func run() -> Never {
        let cli = CLI(name: RawlieCLI.name, version: "0.1", description: RawlieCLI.description)
        
        // TODO: Add later
        cli.commands = [
            SayHi(),
            Events(),
        ]
        
        
        cli.aliases.removeValue(forKey: "-v") // Reserve -v for verbose flag, not alias to version cmd
        
        cli.goAndExit()
    }
}
