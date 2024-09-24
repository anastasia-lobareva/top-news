//
//  Constants.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 30/07/2024.
//

import Foundation

struct K {
    static let appName = "TopNews"
    static let apiKey = "YOUR_API_KEY_HERE"
    static let baseURL = "https://newsapi.org/v2/top-headlines?"
    static let countries = [
        "Argentina": "ar",
        "Australia": "au",
        "Austria": "at",
        "Belgium": "be",
        "Brazil": "br",
        "Bulgaria": "bg",
        "Canada": "ca",
        "China": "cn",
        "Colombia": "co",
        "Cuba": "cu",
        "Czech Republic": "cz",
        "Egypt": "eg",
        "France": "fr",
        "Germany": "de",
        "Greece": "gr",
        "Hong Kong": "hk",
        "Hungary": "hu",
        "India": "in",
        "Indonesia": "id",
        "Ireland": "ie",
        "Israel": "il",
        "Italy": "it",
        "Japan": "jp",
        "Latvia": "lv",
        "Lithuania": "lt",
        "Malaysia": "my",
        "Mexico": "mx",
        "Morocco": "ma",
        "Netherlands": "nl",
        "New Zealand": "nz",
        "Nigeria": "ng",
        "Norway": "no",
        "Philippines": "ph",
        "Poland": "pl",
        "Portugal": "pt",
        "Romania": "ro",
        "Russia": "ru",
        "Saudi Arabia": "sa",
        "Serbia": "rs",
        "Singapore": "sg",
        "Slovakia": "sk",
        "Slovenia": "si",
        "South Africa": "za",
        "South Korea": "kr",
        "Sweden": "se",
        "Switzerland": "ch",
        "Taiwan": "tw",
        "Thailand": "th",
        "Turkey": "tr",
        "UAE": "ae",
        "Ukraine": "ua",
        "United Kingdom": "gb",
        "United States": "us",
        "Venuzuela": "ve"
    ]
    static let defaultCountry = "Argentina"
    static let newsSegue = "goToCountryNews"
    static let linkSegue = "goToSelectedNews"
    static let cellIdentifier = "NewsReusableCell"
    static let cellNibName = "NewsCellTableViewCell"
}
