//
//  Greeter.swift
//  Rawlie
//
//  Created by Steven Prichard on 10/31/18.
//

import Foundation
import SwiftCLI


class SayHi: Command {
    var name: String = "greet"
    var shortDescription = "Says hi 👋"
    
    
    func execute() throws {
        stdout <<< "Ruff! 🐶"
    }
}
