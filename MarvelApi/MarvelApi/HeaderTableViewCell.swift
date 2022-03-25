//
//  HeaderTableViewCell.swift
//  MarvelApi
//
//  Created by Mithun Samy on 24/03/22.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureLbl(txt: String) {
        self.headerLbl.text = txt
    }
    
}
