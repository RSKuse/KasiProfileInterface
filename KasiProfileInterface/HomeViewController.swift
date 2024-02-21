//
//  ViewController.swift
//  KasiProfileInterface
//
//  Created by Reuben Simphiwe Kuse on 2024/02/13.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var kasiImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Tabitha Potter")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 40
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Kasi"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "kasiwallet"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var threadsNetButton: UIButton = {
        let button = UIButton()
        button.setTitle("threads.net", for: UIControl.State.normal)
        button.setTitleColor(.lightGray, for: UIControl.State.normal)
        button.backgroundColor = .systemGray6
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var nameLinkStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, threadsNetButton])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Banking got stuck in the 90's. We are bringing it to today and the future.🌍"
        label.textColor = .black
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var followersImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Maximmilian")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var followersImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Martha Craig")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var followersImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "karennne")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var followerCountLabel: UILabel = {
        let label = UILabel()
        label.text = "9"
        label.textColor = .systemGray2
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var followersLabel: UILabel = {
        let label = UILabel()
        label.text = "Followers • kasi.money"
        label.textColor = .systemGray2
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var followingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followerCountLabel, followersLabel])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var editProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("Edit profile", for: UIControl.State.normal)
        button.setTitleColor(.black, for: UIControl.State.normal)
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 8.0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var shareProfileButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Share profile", for: UIControl.State.normal)
        button.setTitleColor(.black, for: UIControl.State.normal)
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 8.0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [editProfileButton, shareProfileButton])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    lazy var cameraClickButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_home_selected")
        button.setImage(icon, for: .normal)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var settingButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_setting")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var websiteButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_messages_selected")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupUI()
        setupNavigationBar()
        settingButton.addTarget(self, action: #selector(settingButtonTapped), for: .touchUpInside)
  
    }
    func setupNavigationBar() {
        
        let cameraButton = UIBarButtonItem(customView: cameraClickButton)
        let settingBarButton = UIBarButtonItem(customView: settingButton)
        let websiteBarButton = UIBarButtonItem(customView: websiteButton)
        cameraClickButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        cameraClickButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        settingButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        settingButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        navigationItem.rightBarButtonItems = [settingBarButton, cameraButton]
        navigationItem.leftBarButtonItems = [websiteBarButton]
        
    }

    
    func setupUI() {
        view.addSubview(kasiImageView)
        view.addSubview(titleLabel)
        view.addSubview(nameLinkStackView)
        view.addSubview(descriptionLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(followersImageView)
        view.addSubview(followersImageView2)
        view.addSubview(followersImageView3)
        view.addSubview(followingStackView)
        view.addSubview(buttonStackView)


        kasiImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        kasiImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        kasiImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        kasiImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        nameLinkStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        nameLinkStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        threadsNetButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: nameLinkStackView.bottomAnchor, constant: 20).isActive = true
        
        followersImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        followersImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20).isActive = true
        followersImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        followersImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        followersImageView2.leftAnchor.constraint(equalTo: followersImageView.rightAnchor, constant: -10).isActive = true
        followersImageView2.centerYAnchor.constraint(equalTo: followersImageView.centerYAnchor).isActive = true
        followersImageView2.widthAnchor.constraint(equalToConstant: 25).isActive = true
        followersImageView2.heightAnchor.constraint(equalToConstant: 25).isActive = true
                
        followersImageView3.leftAnchor.constraint(equalTo: followersImageView2.rightAnchor, constant: -10).isActive = true
        followersImageView3.centerYAnchor.constraint(equalTo: followersImageView.centerYAnchor).isActive = true
        followersImageView3.widthAnchor.constraint(equalToConstant: 25).isActive = true
        followersImageView3.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        followingStackView.leftAnchor.constraint(equalTo: followersImageView3.rightAnchor, constant: 10).isActive = true
        followingStackView.centerYAnchor.constraint(equalTo: followersImageView.centerYAnchor).isActive = true
        
        buttonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        buttonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        buttonStackView.topAnchor.constraint(equalTo: followingStackView.bottomAnchor, constant: 20).isActive = true
        buttonStackView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    @objc func settingButtonTapped() {
            let settingVC = SettingsViewController()
            navigationController?.pushViewController(settingVC, animated: true)
        }


}

