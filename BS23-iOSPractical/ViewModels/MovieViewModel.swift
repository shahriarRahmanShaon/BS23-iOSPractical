//
//  MovieViewModel.swift
//  BS23-iOSPractical
//
//  Created by Sergio shaon on 23/11/23.
//

import Foundation
import Combine

class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    private var movieService = MovieService()
    private var cancellables = Set<AnyCancellable>()

    init() {
        movieService.fetchMovies()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] movieResponse in
                self?.movies = movieResponse.results
            })
            .store(in: &cancellables)
    }
}


