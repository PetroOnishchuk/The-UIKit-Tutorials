//
//  EmojiTableViewCell.swift
//  UITabBarController&TableVC01
//
//  Created by Petro Onishchuk on 7/8/21.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    let labelForEmoji = UILabel()
    let labelForText = UILabel()
    
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupEmojiLabel()
        setupTextLabel()
    }
    
    
    
    
    func setupEmojiLabel() {
        
        addSubview(labelForEmoji)
        labelForEmoji.translatesAutoresizingMaskIntoConstraints = false
        labelForEmoji.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        labelForEmoji.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        labelForEmoji.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelForEmoji.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        labelForEmoji.font = UIFont.systemFont(ofSize: 25)
        
    }
    
    func setupTextLabel() {
        addSubview(labelForText)
        labelForText.translatesAutoresizingMaskIntoConstraints = false
        labelForText.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        labelForText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        labelForText.trailingAnchor.constraint(equalTo: labelForEmoji.leadingAnchor, constant: -10).isActive = true
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
