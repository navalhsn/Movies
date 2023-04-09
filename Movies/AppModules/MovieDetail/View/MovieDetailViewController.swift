//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Naval Hasan on 08/04/23.
//

import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {
    // #MARK: Outlets
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    // #MARK: Declarations
    var resultModel: Results?
    
    // #MARK: VCLC
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitleLabel.text = resultModel?.title
        movieReleaseDateLabel.text = resultModel?.release_date
        let imageUrl = URL(string: ApiEndpoints.shared.imageBaseUrl + Global.shared.trendingListImageSize + (resultModel?.poster_path ?? ""))
        movieImageView.kf.setImage(with: imageUrl)
        movieDescriptionLabel.text = resultModel?.overview
    }

}
