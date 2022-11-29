//
//  Builder.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// The Builder interface specifies methods for creating the different parts of
/// the Product objects.
protocol Builder {

    func producePartA()
    func producePartB()
    func producePartC()
}
