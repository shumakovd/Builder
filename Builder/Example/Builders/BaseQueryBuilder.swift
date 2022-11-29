//
//  BaseQueryBuilder.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class BaseQueryBuilder<Model: DomainModel> {

    typealias Predicate = (Model) -> (Bool)

    func limit(_ limit: Int) -> BaseQueryBuilder<Model> {
        return self
    }

    func filter(_ predicate: @escaping Predicate) -> BaseQueryBuilder<Model> {
        return self
    }

    func fetch() -> [Model] {
        preconditionFailure("Should be overridden in subclasses.")
    }
}
