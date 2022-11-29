//
//  CoreDataQueryBuilder.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class CoreDataQueryBuilder<Model: DomainModel>: BaseQueryBuilder<Model> {

    enum Query {
        case filter(Predicate)
        case limit(Int)
        case includesPropertyValues(Bool)
        /// ...
    }

    fileprivate var operations = [Query]()

    override func limit(_ limit: Int) -> CoreDataQueryBuilder<Model> {
        operations.append(Query.limit(limit))
        return self
    }

    override func filter(_ predicate: @escaping Predicate) -> CoreDataQueryBuilder<Model> {
        operations.append(Query.filter(predicate))
        return self
    }

    func includesPropertyValues(_ toggle: Bool) -> CoreDataQueryBuilder<Model> {
        operations.append(Query.includesPropertyValues(toggle))
        return self
    }

    override func fetch() -> [Model] {
        print("CoreDataQueryBuilder: Initializing CoreDataProvider with \(operations.count) operations.")
        return CoreDataProvider().fetch(operations)
    }
}
