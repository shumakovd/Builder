//
//  ConcreteBuilder1.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// The Concrete Builder classes follow the Builder interface and provide
/// specific implementations of the building steps. Your program may have
/// several variations of Builders, implemented differently.
class ConcreteBuilder1: Builder {

    /// A fresh builder instance should contain a blank product object, which is
    /// used in further assembly.
    private var product = Product1()

    func reset() {
        product = Product1()
    }

    /// All production steps work with the same product instance.
    func producePartA() {
        product.add(part: "PartA1")
    }

    func producePartB() {
        product.add(part: "PartB1")
    }

    func producePartC() {
        product.add(part: "PartC1")
    }

    /// Concrete Builders are supposed to provide their own methods for
    /// retrieving results. That's because various types of builders may create
    /// entirely different products that don't follow the same interface.
    /// Therefore, such methods cannot be declared in the base Builder interface
    /// (at least in a statically typed programming language).
    ///
    /// Usually, after returning the end result to the client, a builder
    /// instance is expected to be ready to start producing another product.
    /// That's why it's a usual practice to call the reset method at the end of
    /// the `getProduct` method body. However, this behavior is not mandatory,
    /// and you can make your builders wait for an explicit reset call from the
    /// client code before disposing of the previous result.
    func retrieveProduct() -> Product1 {
        let result = self.product
        reset()
        return result
    }
}
