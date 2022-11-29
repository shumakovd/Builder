//
//  RealmQueryBuilder.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class RealmQueryBuilder<Model: DomainModel>: BaseQueryBuilder<Model> {

    enum Query {
        case filter(Predicate)
        case limit(Int)
        /// ...
    }

    fileprivate var operations = [Query]()

    @discardableResult
    override func limit(_ limit: Int) -> RealmQueryBuilder<Model> {
        operations.append(Query.limit(limit))
        return self
    }

    @discardableResult
    override func filter(_ predicate: @escaping Predicate) -> RealmQueryBuilder<Model> {
        operations.append(Query.filter(predicate))
        return self
    }

    override func fetch() -> [Model] {
        print("RealmQueryBuilder: Initializing CoreDataProvider with \(operations.count) operations:")
        return RealmProvider().fetch(operations)
    }
}
