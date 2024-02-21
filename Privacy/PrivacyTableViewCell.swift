//
//  PrivacyTableViewCell.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/19.
//

import Foundation
import UIKit

class PrivacyTableViewCell: UITableViewCell {
    
    lazy var IconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon_messages")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        //imageView.layer.cornerRadius = 12.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "Private Profile"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var privacySwitch: UISwitch = {
        let privacySwitch = UISwitch()
        privacySwitch.isOn = true
        privacySwitch.isHidden = false
        privacySwitch.tintColor = .cyan
        privacySwitch.translatesAutoresizingMaskIntoConstraints = false
        return privacySwitch
    }()
    
    lazy var optionNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "Everyone", attributes: [NSAttributedString.Key.kern: -0.3])
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [IconImageView, nameLabel])
        stackView.alignment = .leading
        stackView.distribution = .equalCentering
        stackView.axis = .horizontal
        stackView.spacing = 6
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .none
        setupUI()
        
    }
    func setupUI() {
        contentView.addSubview(IconImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(privacySwitch)
        contentView.addSubview(optionNameLabel)
        contentView.addSubview(userNameStackView)

        IconImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        IconImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        
        userNameStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        userNameStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        privacySwitch.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        privacySwitch.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true

        optionNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        optionNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true

        
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}
