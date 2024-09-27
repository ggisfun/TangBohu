//
//  ChatViewController.swift
//  TangBohu
//
//  Created by Adam Chen on 2024/9/26.
//

import UIKit
import Kingfisher

class ChatViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dramas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let drama = dramas[indexPath.row]
        
        if drama.name == "Tang" {
            if drama.content != nil {
                let tangCell = tableView.dequeueReusableCell(withIdentifier: TangTableViewCell.identifier, for: indexPath) as! TangTableViewCell
                tangCell.contentTextView.text = drama.content
                tangCell.nameLabel.text = "華安"
                return tangCell
            }else {
                let tangCell = tableView.dequeueReusableCell(withIdentifier: TangImgTableViewCell.identifier, for: indexPath) as! TangImgTableViewCell
                tangCell.stickerImageView.kf.setImage(with: URL(string:drama.imgUrl!))
                return tangCell
            }
        }else{
            if drama.content != nil {
                let dueiCell = tableView.dequeueReusableCell(withIdentifier: DueiTableViewCell.identifier, for: indexPath) as! DueiTableViewCell
                dueiCell.contentTextView.text = drama.content
                dueiCell.nameLabel.text = "對穿腸"
                return dueiCell
            }else {
                let dueiCell = tableView.dequeueReusableCell(withIdentifier: DueiImgTableViewCell.identifier, for: indexPath) as! DueiImgTableViewCell
                dueiCell.stickerImageView.kf.setImage(with: URL(string:drama.imgUrl!))
                return dueiCell
            }
            
        }
    }
    
    
}
