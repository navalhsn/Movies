//
//  Common.swift
//  Movies
//
//  Created by Naval Hasan on 07/04/23.
//

import Foundation

class Global {
    static let shared = Global()
    private init() {}
    // Network
    let apiKey = "c9856d0cb57c3f14bf75bdc6c063b8f3"
}

struct Constants {
    // Home
    static let movies = "Movies"
    static let paginationEndText = "end"
}

struct ColorValues {
    // General
    static let activityIndicatorColor = "#9E3786"
    // Home
    static let homeCategoryCollectionCellSelectionColor = "#53338A"
    static let homeCategoryCollectionArrowColor = "#F2F3F1"
}

struct cellIdentifiers {
    // Home
    static let homeCategoryCollectionCellIdentifier = "HomeCategoriesCollectionViewCell"
    static let homebrandsCollectionCellIdentifier = "HomeBrandsCollectionViewCell"
}
