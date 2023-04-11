//
//  MovieListViewController+UITableView+Extension.swift
//  Movies
//
//  Created by Naval Hasan on 08/04/23.
//

import UIKit
import Kingfisher

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trendingMoviesModel?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.shared.listMoviesTableViewCell) as! ListMoviesTableViewCell
        if let result = trendingMoviesModel?.results?[indexPath.row] {
            cell.movieTitleLabel.text = result.title
            cell.movieReleaseDateLabel.text = result.release_date
            cell.ratingLabel.text = "\(result.vote_average ?? 0)/10 "
            // caching image
            let imageUrl = URL(string: ApiEndpoints.shared.imageBaseUrl + Global.shared.trendingListImageSize + (result.poster_path ?? ""))
            let processor = DownsamplingImageProcessor(size: cell.movieImageView.bounds.size)
            |> RoundCornerImageProcessor(cornerRadius: 2)
            cell.movieImageView.kf.indicatorType = .activity
            cell.movieImageView.kf.setImage( with: imageUrl, placeholder: nil,
                options: [ .processor(processor), .scaleFactor(UIScreen.main.scale), .transition(.fade(1)), .cacheOriginalImage ])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: ViewControllerIdentifiers.shared.movieDetailViewController) as? MovieDetailViewController {
            vc.resultModel = trendingMoviesModel?.results?[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
