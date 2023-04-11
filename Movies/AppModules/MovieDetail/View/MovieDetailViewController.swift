//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Naval Hasan on 08/04/23.
//

import UIKit
import Kingfisher

class MovieDetailViewController: BaseViewController {
    // #MARK: Outlets
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    // #MARK: Declarations
    var resultModel: Results?
    var movieDetailViewModel: MovieDetailViewModel?
    
    // #MARK: VCLC
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupDetailNavigationBar()
    }
    
    // #MARK: Other functions
    func initialSetup() {
        movieTitleLabel.text = resultModel?.title
        movieReleaseDateLabel.text = resultModel?.release_date
        // image
        let imageUrl = URL(string: ApiEndpoints.shared.imageBaseUrl + Global.shared.trendingListImageSize + (resultModel?.poster_path ?? ""))
        movieImageView.kf.setImage(with: imageUrl)
        movieDescriptionLabel.text = resultModel?.overview
        // rating
        let voteCount = resultModel?.vote_count ?? 0
        let voteAverage = resultModel?.vote_average ?? 0
        let ratingString = "\(Constants.shared.rating) \(voteAverage) \(Constants.shared.based_on) \(voteCount) \(Constants.shared.votes)"
        ratingLabel.attributedText = ratingString.withBoldText(text: Constants.shared.rating)
    }
    
}
