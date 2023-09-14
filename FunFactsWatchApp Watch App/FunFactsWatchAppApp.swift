//
//  FunFactsWatchAppApp.swift
//  FunFactsWatchApp Watch App
//
//  Created by Kira Kira on 8/1/23.
//

import SwiftUI

@main
struct FunFactsWatchApp_Watch_AppApp: App {
    var game = ViewModel()
    var body: some Scene {
        WindowGroup {
          ContentView(viewModel: game)
        }
    }
}
