//
//  CarTableViewCell.swift
//  AVCustomCell
//
//  Created by Artjoms Vorona on 13/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var makerLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLabelsText(with: Car) {
        makerLabel.text = "Maker: " + with.maker
        modelLabel.text = "Model: " + with.model
        typeLabel.text = "Type: " + with.type
        
        if with.type == "SUV" {
            contentView.backgroundColor = .systemYellow
        } else {
            contentView.backgroundColor = .systemGray5
        }
        
    }
    
}
