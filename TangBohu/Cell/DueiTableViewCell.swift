//
//  DueiTableViewCell.swift
//  TangBohu
//
//  Created by Adam Chen on 2024/9/26.
//

import UIKit

class DueiTableViewCell: UITableViewCell {

    static let identifier: String = "DueiTableViewCell"
    @IBOutlet weak var headStickerImageView: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bubbleImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        headStickerImageView.image = UIImage(named: "duei")
        headStickerImageView.layer.cornerRadius = 24
        contentTextView.layer.cornerRadius = 10
        contentTextView.textContainerInset = UIEdgeInsets(top: 12, left: 15, bottom: 12, right: 15)
        bubbleImageView.image = UIImage(named: "bubbleLeft")
        bubbleImageView.contentMode = .scaleToFill
        
        let insets = UIEdgeInsets(top: 18, left: 23, bottom: 18, right: 23)
        let imageWithInsets = bubbleImageView.image!.resizableImage(withCapInsets: insets, resizingMode: .stretch)
        
        bubbleImageView.image = imageWithInsets.withRenderingMode(.alwaysTemplate)
        bubbleImageView.image?.withRenderingMode(.alwaysTemplate)
        bubbleImageView.tintColor = .systemGray5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
