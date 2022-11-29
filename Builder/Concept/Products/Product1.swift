//
//  Product1.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// It makes sense to use the Builder pattern only when your products are quite
/// complex and require extensive configuration.
///
/// Unlike in other creational patterns, different concrete builders can produce
/// unrelated products. In other words, results of various builders may not
/// always follow the same interface.
class Product1 {

    private var parts = [String]()

    func add(part: String) {
        self.parts.append(part)
    }

    func listParts() -> String {
        return "Product parts: " + parts.joined(separator: ", ") + "\n"
    }
}
