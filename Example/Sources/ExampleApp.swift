//
//  ExampleApp.swift
//  Example
//
//  Created by Takehito Soi on 2021/07/19.
//

import SpacerSDK
import SwiftUI

@main
struct ExampleApp: App {
    @StateObject private var appControl = AppControl.shared
    var body: some Scene {
        WindowGroup {
            ZStack {
                LoadingView().zIndex(appControl.zIndex)
                ContentView()
                    .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
            }
        }
    }

    init() {
        let config = SPRConfig(baseURL: "https://api-vsv0ukl18tz6dm.spacer.co.jp/exApp")
        SPR.configure(config: config)
    }
}
