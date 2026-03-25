//
//  Constant.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//


import Foundation
struct Constant{
    static let API_URL = "https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1"
    static func searchTerm_API(searchText: String) -> String{
        return "\(API_URL)&tags=\(searchText)"
    }
}
