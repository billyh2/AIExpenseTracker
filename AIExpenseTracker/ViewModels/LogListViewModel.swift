//
//  LogListViewModel.swift
//  AIExpenseTracker
//
//  Created by Billy Huang on 2025/3/18.
//

import Foundation
import Observation

//state of expenses list such as selected sort type, sort order, and category filter
@Observable
class LogListViewModel {
    
    let db = DatabaseManager.shared
    
    var sortType = SortType.date
    var sortOrder = SortOrder.descending
    var selectedCategories = Set<Category>()
    
    var isLogFormPresented = false
    var logToEdit: ExpenseLog?
    
}
