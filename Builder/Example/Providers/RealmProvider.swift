//
//  RealmProvider.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// Data Providers contain a logic how to fetch models. Builders accumulate
/// operations and then update providers to fetch the data.

class RealmProvider {

    func fetch<Model: DomainModel>(_ operations: [RealmQueryBuilder<Model>.Query]) -> [Model] {

        print("RealmProvider: Retrieving data from Realm...")

        for item in operations {
            switch item {
            case .filter(_):
                print("RealmProvider: executing the 'filter' operation.")
                /// Use Realm instance to filter results.
                break
            case .limit(_):
                print("RealmProvider: executing the 'limit' operation.")
                /// Use Realm instance to limit results.
                break
            }
        }

        /// Return results from Realm
        return []
    }
}
