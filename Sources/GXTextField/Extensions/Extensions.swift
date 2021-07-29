//
//  Extensions.swift
//  Red
//
//  Created by Danil Lomaev on 05.04.2021.
//

import Foundation
import SwiftUI

// MARK: - Optional extensions
extension Optional: AnyOptional {
    /// This variable checks if value is nil
    public var isNil: Bool { self == nil }
}

public extension Optional where Wrapped == Int {
    /// This method transform opt Int to Double
    /// - Returns: opt double
    func optIntToOptDouble() -> Double? {
        if let unwrapInt = self {
            return Double(unwrapInt)
        } else {
            return nil
        }
    }
}

public extension Optional where Wrapped == Double {
    /// This method transform opt Double to Int
    /// - Returns: opt Int
    func optDoubleToOptInt() -> Int? {
        if let unwrapDouble = self {
            return Int(unwrapDouble)
        } else {
            return nil
        }
    }
}
