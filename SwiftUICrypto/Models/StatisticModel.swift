//
//  StatisticModel.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/24.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
}
