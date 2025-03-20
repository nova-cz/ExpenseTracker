import SwiftUI

extension Color {
    static let primaryBackground = Color("Background")
    static let primaryIcon = Color("Icon")
    static let primaryText = Color("Text") // Renombrado para evitar conflicto
    static let systemBackground = Color(UIColor.systemBackground) // Corrección aquí
}


extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
        print("Initializing DateFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}


extension String {
    func dateParsed() -> Date{
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else {return Date()}
        
        return parsedDate
    }
}

extension Date: Strideable {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
