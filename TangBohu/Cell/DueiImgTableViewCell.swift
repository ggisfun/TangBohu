//
//  DueiImgTableViewCell.swift
//  TangBohu
//
//  Created by Adam Chen on 2024/9/26.
//

import UIKit

class DueiImgTableViewCell: UITableViewCell {

    static let identifier: String = "DueiImgTableViewCell"
    @IBOutlet weak var stickerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stickerImageView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
