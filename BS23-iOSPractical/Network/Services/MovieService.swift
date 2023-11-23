//
//  MovieService.swift
//  BS23-iOSPractical
//
//  Created by Sergio shaon on 23/11/23.
//

import Combine
import Foundation

class MovieService {
    func fetchMovies(searchQuery: String = "marvel") -> AnyPublisher<MovieResponse, Error> {
        let encodedQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "https://api.themoviedb.org/3/search/movie?api_key=38e61227f85671163c275f9bd95a8803&query=\(encodedQuery)"
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL")
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: MovieResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}


