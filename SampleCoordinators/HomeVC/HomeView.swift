//
//  HomeView.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class HomeView : UIStackView {
    
    static func createButton(title : String, color : UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.tintColor = .black
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return button
    }
    
    private let welcomeText : UILabel = {
        
        let label = UILabel()
        label.text = "Welcome!"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let loginButton = createButton(title: "Login", color: .loginButton)
    let registerButton = createButton(title: "Register", color: .registerButton)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        distribution = .fillEqually
        spacing = 30
        
        [welcomeText,loginButton, registerButton].forEach { (views) in
            addArrangedSubview(views)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
