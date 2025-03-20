//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Miguel Angel Cruz Reyes on 20/03/25.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transationListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List{
                ForEach(Array(transationListVM.groupTransactionsByMonth()), id: \.key) {
                    month, transactions in
                    Section {
                        //MARK: Transaction List
                        ForEach(transactions) {transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        //MARK: Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        Group{
            NavigationView{
                TransactionList()
            }
            NavigationView{
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(transactionListVM)
    }
}
