//
//  MovieListViewController.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import UIKit

class MovieListViewController: BaseViewController {
    
    // #MARK: Declarations
    var movieListViewModel = MovieListViewModel()
    var trendingMoviesModel: TrendingMoviesModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieListViewModel.getTrendingMovies({ response in
            print(response)
        })
    }
}
