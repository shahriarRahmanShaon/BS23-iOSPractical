//
//  MovieListView.swift
//  BS23-iOSPractical
//
//  Created by Sergio shaon on 23/11/23.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel = MovieViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.movies) { movie in
                HStack {
                    if let url = movie.posterURL {
                        AsyncImage(url: url)
                            .frame(width: 100, height: 150)
                            .cornerRadius(8)
                    } else {
                        Image(systemName: "photo")
                            .frame(width: 100, height: 150)
                    }
                    LazyVStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.headline)
                        Text(movie.overview)
                            .font(.subheadline)
                            .lineLimit(3)
                    }
                }
            }
            .searchable(text: $viewModel.searchQuery)
            .navigationTitle("Movie List")
        }
    }
}


