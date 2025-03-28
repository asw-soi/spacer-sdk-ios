//
//  AlertItem.swift
//  Example
//
//  Created by Takehito Soi on 2021/06/22.
//

import SpacerSDK
import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: String
    var message: String?

    var alert: Alert {
        if let message = message {
            return Alert(title: Text(title), message: Text(message))
        } else {
            return Alert(title: Text(title))
        }
    }

    static func CBLockerScanSuccess(_ sprLockers: [SPRLockerModel]) -> AlertItem {
        let text = sprLockers.map { $0.description }.joined(separator: "\n")
        return AlertItem(title: "succeeded in scanning", message: "\(text)")
    }

    static func CBLockerPutSuccess(_ spacerId: String) -> AlertItem {
        AlertItem(title: "succeeded in putting in \(spacerId)")
    }

    static func CBLockerTakeSuccess(_ spacerId: String) -> AlertItem {
        AlertItem(title: "succeeded in taking from \(spacerId)")
    }

    static func CBLockerTakeWithKeySuccess(_ urlKey: String) -> AlertItem {
        AlertItem(title: "succeeded in taking with \(urlKey)")
    }

    static func MyLockerGetSuccess(_ myLockers: [MyLockerModel]) -> AlertItem {
        let text = myLockers.map { $0.description }.joined(separator: "\n")
        return AlertItem(title: "succeeded in getting myLockers", message: "\(text)")
    }

    static func MyLockerReserveSuccess(_ spacerId: String, _ myLocker: MyLockerModel) -> AlertItem {
        AlertItem(title: "succeeded reservation of \(spacerId)", message: "\(myLocker.description)")
    }

    static func MyLockerReserveCancelSuccess(_ spacerId: String) -> AlertItem {
        AlertItem(title: "succeeded in canceling \(spacerId) reservation")
    }

    static func MyLockerSharedSuccess(_ urlKey: String, _ myLocker: MyLockerModel) -> AlertItem {
        AlertItem(title: "succeeded in sharing with \(urlKey)", message: "\(myLocker.description)")
    }

    static func SPRLockerGetSuccess(_ sprLockers: [SPRLockerModel]) -> AlertItem {
        let text = sprLockers.map { $0.description }.joined(separator: "\n")
        return AlertItem(title: "succeeded in getting spacers", message: "\(text)")
    }

    static func SPRUnitGetSuccess(_ sprUnits: [SPRLockerUnitModel]) -> AlertItem {
        let text = sprUnits.map { $0.description }.joined(separator: "\n")
        return AlertItem(title: "succeeded in getting units", message: "\(text)")
    }
}
