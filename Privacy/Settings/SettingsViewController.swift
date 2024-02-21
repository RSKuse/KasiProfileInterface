//
//  SettingsViewController.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/21.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var settingArray = ["Follow and Invite Friends", "Notifications", "Your Likes", "Privacy", "Account", "Help", "About"]
    var switchProfileAndLogOutArray = ["Switch profiles", "Log Out"]

    
    lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        registerCells()
        title = "Settings"
    }
    
    func setupUI() {
        view.addSubview(settingsTableView)
        
        settingsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        settingsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        settingsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        settingsTableView.register(SettingTableViewCell.self, forCellReuseIdentifier: "SettingTableViewCellID")
        settingsTableView.register(SwitchProfileAndLogOutSettingTableViewCell.self, forCellReuseIdentifier: "SwitchProfileAndLogOutSettingTableViewCellID")
        
    }
    
    
}


