//
//  DatabaseManager.swift
//  AIExpenseTracker
//
//  Created by Billy Huang on 2025/3/18.
//

import Foundation
import FirebaseFirestore

class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private init() {}
    
    //firebase logs
    private(set) lazy var logsCollection: CollectionReference = {
        Firestore.firestore().collection("logs")
    }()
    
    //add a log
    func add(log: ExpenseLog) throws {
        try logsCollection.document(log.id).setData(from: log)
    }
    
    //change a log
    func update(log: ExpenseLog) {
        logsCollection.document(log.id).updateData([
            "name": log.name,
            "amount": log.amount,
            "category": log.category,
            "date": log.date
        ])
    }
    
    //delete a log
    func delete(log: ExpenseLog) {
        logsCollection.document(log.id).delete()
    }
    
}
