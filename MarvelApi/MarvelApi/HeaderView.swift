//
//  HeaderView.swift
//  MarvelApi
//
//  Created by Mithun Samy on 24/03/22.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet weak var headLbl: UILabel!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
}
