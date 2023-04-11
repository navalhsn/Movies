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
    
    // API functions
    func getMovieDetail(_ completionHandler: @escaping (TrendingMoviesModel) -> Void) {
        networkManager.getApiData(urlString: ApiEndpoints.shared.movieDetailBaseUrl, resultType: TrendingMoviesModel.self) { response in
            completionHandler(response)
        }
    }
    
    // Note to the reviewer: This api was not used since the api was not giving a JSON response
    // Already shared a mail with attaching a screenshot of the api response in postman
    // Since all necessary data was available with the trending list api itself, I could use that response in detail as well.
}
