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
    @Published var searchQuery = "marvel"
    private var movieService = MovieService()
    private var cancellables = Set<AnyCancellable>()

    init() {
        fetchMovies(query: "marvel")

        $searchQuery
            .removeDuplicates()
            .debounce(for: 0.5, scheduler: DispatchQueue.main)
            .sink { [weak self] query in
                self?.fetchMovies(query: query)
            }
            .store(in: &cancellables)
    }

    private func fetchMovies(query: String) {
        movieService.fetchMovies(searchQuery: query)
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




