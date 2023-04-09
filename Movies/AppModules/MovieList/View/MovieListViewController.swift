//
//  MovieListViewController.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import UIKit
import Kingfisher

class MovieListViewController: BaseViewController {
    // #MARK: Outlets
    @IBOutlet weak var movieListTableView: UITableView!
    
    // #MARK: Declarations
    var movieListViewModel = MovieListViewModel()
    var trendingMoviesModel: TrendingMoviesModel?
    
    // #MARK: VCLC
    override func viewDidLoad() {
        super.viewDidLoad()
        callTrendingMoviesApi()
    }
    
    // #MARK: Other functions
    func callTrendingMoviesApi() {
        movieListViewModel.getTrendingMovies({ response in
            self.trendingMoviesModel = response
            DispatchQueue.main.async {
                self.movieListTableView.reloadData()
            }
        })
    }
}
