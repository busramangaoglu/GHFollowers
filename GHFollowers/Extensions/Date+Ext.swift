//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 29.07.2026.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat () -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
        
    }
}
