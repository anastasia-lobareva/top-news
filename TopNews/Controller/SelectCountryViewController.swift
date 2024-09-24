//
//  ViewController.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 25/07/2024.
//

import UIKit

class SelectCountryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var selectLable: UILabel!
    @IBOutlet weak var countryPicker: UIPickerView!
    @IBOutlet weak var showNewsButton: UIButton!
    
    var countryManager = CountryManager()
    var selectedCountry = K.defaultCountry
    var news: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPicker.dataSource = self
        countryPicker.delegate = self
    }

    @IBAction func showNewButtonPressed(_ sender: UIButton) {
        countryManager.getCountryNews(for: selectedCountry) { articles in
            if let articles = articles {
                self.news = articles
                self.performSegue(withIdentifier: K.newsSegue, sender: self)
            } else {
                print("failed to fetch news")
            }
        }     
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryManager.countryNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryManager.countryNames[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedCountry = countryManager.countryNames[row]
        
    }
    
    func didUpdateNews(news: [News]?) {
        if let news = news {
            self.news = news
        }
    }
    
    func didFailWithError(error: any Error) {
        print(error)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.newsSegue {
            let destinationVC = segue.destination as! DisplayNewsViewController
            destinationVC.news = news
        }
    }
}

