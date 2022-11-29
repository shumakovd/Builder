//
//  Client.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// The client code creates a builder object, passes it to the director and then
/// initiates the construction process. The end result is retrieved from the
/// builder object.
class Client {
    // ...
    static func someClientCode(director: Director) {
        let builder = ConcreteBuilder1()
        director.update(builder: builder)
        
        print("Standard basic product:")
        director.buildMinimalViableProduct()
        print(builder.retrieveProduct().listParts())

        print("Standard full featured product:")
        director.buildFullFeaturedProduct()
        print(builder.retrieveProduct().listParts())

        // Remember, the Builder pattern can be used without a Director class.
        print("Custom product:")
        builder.producePartA()
        builder.producePartC()
        print(builder.retrieveProduct().listParts())
    }
    // ...
}
