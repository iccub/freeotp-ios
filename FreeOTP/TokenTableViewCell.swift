//
//  TokenTableViewCell.swift
//  FreeOTP
//
//  Created by Bucci on 06.12.2017.
//  Copyright © 2017 Fedora Project. All rights reserved.
//

import UIKit

class TokenTableViewCell: UITableViewCell {
    
    @IBOutlet weak var issuerLabel: UILabel!
    @IBOutlet weak var accountLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
