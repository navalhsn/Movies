//
//  Common.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import UIKit

class Global {
    static let shared = Global()
    private init() {}
    // Network
    let apiKey = "c9856d0cb57c3f14bf75bdc6c063b8f3"
    let trendingListImageSize = "w500/"
}

struct Constants {
    static let shared = Constants()
    private init() {}
    // Detail
    let rating = "Rating:"
    let based_on = "Based on"
    let votes = "Votes"
}

struct ColorValues {
    // General
    static let activityIndicatorColor = "#ffe300"
    static let navigationBarBackgroundColor = UIColor.systemBackground
}

struct ViewControllerIdentifiers {
    static let shared = ViewControllerIdentifiers()
    private init() {}
    // Detail
    let movieDetailViewController = "MovieDetailViewController"
}

struct CellIdentifiers {
    static let shared = CellIdentifiers()
    private init() {}
    // Listing
    let listMoviesTableViewCell = "ListMoviesTableViewCell"
}
