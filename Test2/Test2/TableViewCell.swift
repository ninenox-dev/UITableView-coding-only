//
//  TableViewCell.swift
//  Test2
//
//  Created by Nisit Sirimarnkit on 9/26/2559 BE.
//  Copyright © 2559 Nisit Sirimarnkit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var myText = UILabel()
    var myImage = UIImageView()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.awakeFromNib()
        // Initialization code
        myText.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
        myText.textColor = UIColor.black
        self.contentView.addSubview(myText)
        myImage.frame = CGRect(origin: CGPoint.zero , size: frame.size)
        contentView.addSubview(myImage)
        contentView.backgroundColor = UIColor.brown
        print("helloworld")

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
