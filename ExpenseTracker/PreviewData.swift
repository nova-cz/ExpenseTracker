import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "01/25/2025", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "Debit", categoryId: 001, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
