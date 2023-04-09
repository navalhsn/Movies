//
//  NetworkManager.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import Foundation

struct ApiEndpoints {
    static let shared = ApiEndpoints()
    let trendingMoviesListUrl = "https://api.themoviedb.org/3/discover/movie"
    let imageBaseUrl = "https://image.tmdb.org/t/p/"
    let movieDetailBaseUrl = "https://developers.themoviedb.org/3/movies/"
}

struct NetworkManager {
    // httpMethod: GET
    func getApiData<T:Decodable>(urlString: String, resultType: T.Type, completionHandler:@escaping(_ result: T)-> Void) {
        guard let requestUrl = URL(string: "\(urlString)?api_key=\(Global.shared.apiKey)") else { return }
        let urlRequest = URLRequest(url: requestUrl)
        URLSession.shared.dataTask(with: urlRequest) { (data, httpUrlResponse, error) in
            if(data != nil && data?.count != 0) {
                do {
                    let response = try JSONDecoder().decode(T.self, from: data!)
                    _=completionHandler(response)
                }
                catch let decodingError {
                    debugPrint(decodingError)
                }
            }
        }.resume()
    }
}
