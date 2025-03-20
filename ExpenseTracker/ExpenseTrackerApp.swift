//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Miguel Angel Cruz Reyes on 19/03/25.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM =  TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
