//
//  MovieDetailViewModel.swift
//  Movies
//
//  Created by Naval Hasan on 08/04/23.
//

import Foundation

struct MovieDetailViewModel {
    // Declarations
    let networkManager = NetworkManager()
    
    // API calls
    func getMovieDetail(_ completionHandler: @escaping (TrendingMoviesModel) -> Void) {
        networkManager.getApiData(urlString: ApiEndpoints.shared.movieDetailBaseUrl, resultType: TrendingMoviesModel.self) { response in
            completionHandler(response)
        }
    }
}
