//
//  Stringable.swift
//  Quiver
//
//  Created by Heitor Costa on 25/08/17.
//  Copyright © 2017 Heitor Costa. All rights reserved.
//

internal protocol Stringable {
    func convertToString() -> String
}

extension Int: Stringable {
    internal func convertToString() -> String {
        return "\(self)"
    }
}

extension Float: Stringable {
    internal func convertToString() -> String {
        return "\(self)"
    }
}

extension Double: Stringable {
    internal func convertToString() -> String {
        return "\(self)"
    }
}

extension Character: Stringable {
    internal func convertToString() -> String {
        return "\(self)"
    }
}

//extension Date: Stringable {
//    internal func convertToString() -> String {
//        guard let formatter = Quiver.dateFormatter else {
//            return "\(self.shortDateTime) \(self.mediumDate) \(self.longDate)"
//        }
//        
//        return formatter.string(from: self)
//    }
//}
