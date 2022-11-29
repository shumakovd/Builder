//
//  BuilderVC.swift
//  Builder
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

class BuilderVC: UIViewController {
    
    // MARK: - IBOutlets
            
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testBuilderConceptual()
        testBuilderRealWorld()
    }
    
    // MARK: - Method from Concept
    
    func testBuilderConceptual() {
        let director = Director()
        Client.someClientCode(director: director)
    }
    
    // MARK: - Methods from Example
    
    func testBuilderRealWorld() {
        print("Client: Start fetching data from Realm")
        clientCode(builder: RealmQueryBuilder<User>())
        
        print()
        
        print("Client: Start fetching data from CoreData")
        clientCode(builder: CoreDataQueryBuilder<User>())
    }
    
    fileprivate func clientCode(builder: BaseQueryBuilder<User>) {
        
        let results = builder.filter({ $0.age < 20 })
            .limit(1)
            .fetch()
        
        print("Client: I have fetched: " + String(results.count) + " records.")
    }
}
