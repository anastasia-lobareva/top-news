//
//  DisplayNewsViewController.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 29/07/2024.
//

import UIKit

class DisplayNewsViewController: UIViewController{
    
    @IBOutlet weak var newsTableView: UITableView!
    
    var news: [News] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        newsTableView.dataSource = self
        newsTableView.delegate = self
        newsTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.linkSegue {
            let destinationVC = segue.destination as! WebViewController
            if let urlString = sender as? String {
                        destinationVC.newsURL = urlString
                    }
        }
    }
}

extension DisplayNewsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! NewsCellTableViewCell
        
        let article = news[indexPath.row]
        
        var title = article.title
                
        if let range = title.range(of: "- \(article.author)") {
            title.removeSubrange(range)
        }
        
        cell.authorLable.text = article.author
        cell.titleLable.text = title
        cell.urlString = article.url
        cell.delegate = self
        
        return cell
    }

}

extension DisplayNewsViewController: NewsCellDelegate {
    func didTapLinkButton(with url: String) {
        performSegue(withIdentifier: K.linkSegue, sender: url)
    }
}

