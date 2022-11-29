//
//  DomainModel.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

protocol DomainModel {
    /// The protocol groups domain models to the common interface
}

struct User: DomainModel {
    let id: Int
    let age: Int
    let email: String
}
