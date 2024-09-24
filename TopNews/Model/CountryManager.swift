//
//  CountryManager.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 25/07/2024.
//

import Foundation

struct CountryManager {

        var countryNames: [String] {
        return Array(K.countries.keys).sorted()
    }
    
    func getCountryNews(for country: String, completion: @escaping ([News]?) -> Void){
        if let countryCode = K.countries[country] {
            let urlString = "\(K.baseURL)country=\(countryCode)&apiKey=\(K.apiKey)"
            if let url = URL(string: urlString) {
                let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { data, response, error in
                    if error == nil {
                        let decoder = JSONDecoder()
                        if let safeData = data {
                            do {
                                let newsList = try decoder.decode(NewsList.self, from: safeData)
                                DispatchQueue.main.async {
                                    completion(newsList.articles)
                                }
                            } catch {
                                print(error)
                                DispatchQueue.main.async {
                                    completion(nil)
                                }
                            }
                        } else {
                            DispatchQueue.main.async {
                                completion(nil)
                            }
                        }
                    }
                }
                task.resume()
            }
        }
    }
}
