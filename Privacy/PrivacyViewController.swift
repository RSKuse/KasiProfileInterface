//
//  PrivacyViewController.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/19.
//

import Foundation
import UIKit


class PrivacyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var privacyFunctionsArray = ["Private profile", "Mentions", "Muted", "Hidden words", "Profiles you following", "Suggesting posts on other apps"]
    var otherPrivacyArray = ["Other privacy settings", "Blocked profiles", "Hide like and share counts"]

    
    lazy var privacyTableView: UITableView = {
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
        title = "Privacy"
    }
    
    func setupUI() {
        view.addSubview(privacyTableView)
        
        privacyTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        privacyTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        privacyTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        privacyTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        privacyTableView.register(PrivacyTableViewCell.self, forCellReuseIdentifier: "PrivacyTableViewCellID")
        privacyTableView.register(OtherPrivacySettingTableViewCell.self, forCellReuseIdentifier: "OtherPrivacySettingTableViewCellID")
        
    }
    
    
    
    
    
    
    
}


