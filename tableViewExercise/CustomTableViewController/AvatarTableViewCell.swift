//
//  AvatarTableViewCell.swift
//  tableViewExercise
//
//  Created by Murat Çimen on 5.06.2023.
//

import UIKit


class AvatarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var fullNameTitle: UILabel!
    
    @IBOutlet weak var subTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 20
        avatarImg.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
