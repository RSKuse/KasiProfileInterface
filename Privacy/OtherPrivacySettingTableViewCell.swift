//
//  OtherPrivacySettingTableViewCell.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/20.
//

import Foundation
import UIKit

class OtherPrivacySettingTableViewCell: UITableViewCell {
    
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "other privacy settings"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.textColor = .systemGray2
        let attributedString = NSMutableAttributedString(string: "Some settings, such as restrict, apply to both Threads and Instagram and can be managed on Instagram.\nLearn More")
        label.attributedText = attributedString
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        setupUI()
        
    }
    func setupUI() {
        contentView.addSubview(titlelabel)
        contentView.addSubview(descriptionLabel)


        titlelabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        titlelabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        
        descriptionLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -25).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titlelabel.bottomAnchor, constant: 5).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
  
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}
