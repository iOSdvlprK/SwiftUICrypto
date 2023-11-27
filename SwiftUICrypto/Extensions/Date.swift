//
//  Date.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/26.
//

import Foundation

extension Date {
    
    // "2023-11-20T13:54:23.378Z"
    
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
}
