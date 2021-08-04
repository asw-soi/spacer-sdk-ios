//
//  SPRErrorExtensions.swift
//  Example
//
//  Created by Takehito Soi on 2021/07/19.
//

import Foundation
import SOILockerSDK
import SwiftUI

extension SPRError {
    func toAlertItem() -> AlertItem {
        return AlertItem(title: "\(message)(\(code))")
    }
}
