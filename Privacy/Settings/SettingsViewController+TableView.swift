//
//  SettingsViewController+TableView.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/21.
//

import Foundation
import UIKit

extension SettingsViewController {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return settingArray.count
        } else {
            return switchProfileAndLogOutArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCellID", for: indexPath) as!
            SettingTableViewCell
            settingsCell.nameLabel.text = settingArray[indexPath.row]
            return settingsCell
            
        } else {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "SwitchProfileAndLogOutSettingTableViewCellID", for: indexPath) as!
            SwitchProfileAndLogOutSettingTableViewCell
            settingsCell.titleLabel.text = switchProfileAndLogOutArray[indexPath.row]
            return settingsCell
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
           
           if indexPath.section == 0 && indexPath.row == 3 {
               let privacyController = PrivacyViewController()
               navigationController?.pushViewController(privacyController, animated: true)
           }
           
           if indexPath.section == 1 {
               if indexPath.row == 0 {
                   let alertController = UIAlertController(title: "Switching",
                                                           message: "About to switch to a different profile",
                                                           preferredStyle: .alert)
                   
                   let switchButton = UIAlertAction(title: "Switch Profile", style: .destructive) { (_) in
                      
                   }
                   
                   let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                   
                   alertController.addAction(switchButton)
                   alertController.addAction(cancelButton)
                   
                   present(alertController, animated: true, completion: nil)
               } else if indexPath.row == 1 {
                   let alertController = UIAlertController(title: "Logging Off",
                                                           message: "Are you sure you want to log out?",
                                                           preferredStyle: .alert)
                   
                   let logOutButton = UIAlertAction(title: "Log Out", style: .destructive) { (_) in
                       
                   }
                   
                   let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                   
                   alertController.addAction(logOutButton)
                   alertController.addAction(cancelButton)
                   
                   present(alertController, animated: true, completion: nil)
               }
           }
       }
   }
    
    
    




