//
//  main.swift
//  Travel Photo
//
//  Created by Scott Sanders on 2/3/21.
//

import Foundation

struct TravelPhoto{
    var latitude: Double
    var longitude: Double
    var title: String
    var description: String
    var image: String
    var urlString: String
}

let photo1 = TravelPhoto(latitude: 38.94733, longitude: -92.328466, title: "The Mizzou Columns", description: "University of Missouri", image: "columns.png", urlString: "http://missouri.edu/about/history/columns.php")


