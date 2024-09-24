//
//  NewsData.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 29/07/2024.
//

import Foundation

struct NewsList: Decodable {
    let articles: [News]
}

struct News: Decodable {
    let author: String
    let title: String
    let url: String
}
