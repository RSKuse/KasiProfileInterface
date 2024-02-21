//
//  SwitchProfileAndLogOutSettingTableViewCell.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/21.
//

import Foundation
import UIKit

class SwitchProfileAndLogOutSettingTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()
        
    }
    func setupUI() {
        contentView.addSubview(titleLabel)

        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true

    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
}
