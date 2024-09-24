//
//  NewsCellTableViewCell.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 29/07/2024.
//

import UIKit

protocol NewsCellDelegate: AnyObject {
    func didTapLinkButton(with url: String)
}

class NewsCellTableViewCell: UITableViewCell {

    @IBOutlet weak var authorLable: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var linkLable: UILabel!
    
    var urlString: String?
    var delegate: NewsCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func linkSelected(_ sender: Any) {
        if let url = urlString {
            delegate?.didTapLinkButton(with: url)

        }
        
    }
    
}
