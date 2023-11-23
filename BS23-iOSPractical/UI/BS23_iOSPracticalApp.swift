//
//  BS23_iOSPracticalApp.swift
//  BS23-iOSPractical
//
//  Created by Sergio shaon on 23/11/23.
//

import SwiftUI

@main
struct BS23_iOSPracticalApp: App {
    @StateObject var moviewVM = MovieViewModel()
    var body: some Scene {
        WindowGroup {
            MovieListView(viewModel: MovieViewModel())
        }
    }
}
