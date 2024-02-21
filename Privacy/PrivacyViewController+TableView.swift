//
//  PrivacyViewController+TableView.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/19.
//

import Foundation
import UIKit

extension PrivacyViewController {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return privacyFunctionsArray.count
        } else {
            return otherPrivacyArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            // update the rows in section 0
            let privacyCell = tableView.dequeueReusableCell(withIdentifier: "PrivacyTableViewCellID", for: indexPath) as!
            PrivacyTableViewCell
            privacyCell.nameLabel.text = privacyFunctionsArray[indexPath.row]
            if indexPath.row == 0 {
                privacyCell.accessoryType = .none
                privacyCell.optionNameLabel.isHidden = true
                
            } else if indexPath.row == 1 {
                privacyCell.IconImageView.image = UIImage(named: "icon_notification")
                privacyCell.nameLabel.text = "Mentions"
                privacyCell.privacySwitch.isHidden = true
                privacyCell.accessoryType = .disclosureIndicator
            
            } else {
                privacyCell.accessoryType = .disclosureIndicator
                privacyCell.privacySwitch.isHidden = true
                privacyCell.optionNameLabel.isHidden = true
            }
            return privacyCell
       
        } else {
            // update the rows in other sections
            if indexPath.row == 0 {
                let otherSettingTableCell = tableView.dequeueReusableCell(withIdentifier: "OtherPrivacySettingTableViewCellID", for: indexPath) as!
                OtherPrivacySettingTableViewCell
                return otherSettingTableCell
                
            } else {
                let privacyCell = tableView.dequeueReusableCell(withIdentifier: "PrivacyTableViewCellID", for: indexPath) as!
                PrivacyTableViewCell
                privacyCell.nameLabel.text = otherPrivacyArray[indexPath.row]
                privacyCell.accessoryType = .disclosureIndicator
                privacyCell.privacySwitch.isHidden = true
                privacyCell.optionNameLabel.isHidden = true
                return privacyCell
            }

        }
        
        }
    
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 0.5
        }

        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView()
            headerView.backgroundColor = .systemGray3
            return headerView
        }
}

