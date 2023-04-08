//
//  MovieListViewModel.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import Foundation

struct MovieListViewModel {
    // Declarations
    let networkManager = NetworkManager()
    
    // API calls
    func getTrendingMovies(_ completionHandler: @escaping (TrendingMoviesModel) -> Void) {
        networkManager.getApiData(urlString: ApiEndpoints.shared.trendingMoviesListUrl, resultType: TrendingMoviesModel.self) { response in
            completionHandler(response)
        }
    }
}
