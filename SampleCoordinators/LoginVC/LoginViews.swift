//
//  LoginViews.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class LoginViews: UIStackView {
    
    static func createTextField (placeHolderText : String, secureTextStatus : Bool) -> UITextField {
        let tf = UITextField()
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        tf.backgroundColor = .white
        tf.attributedPlaceholder = NSAttributedString(string: placeHolderText,
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray, NSAttributedString.Key.paragraphStyle : style])
        tf.textAlignment = .center
        tf.layer.cornerRadius = 10
        tf.isSecureTextEntry = secureTextStatus
        return tf
    }
    
    let submitButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Submit", for: .normal)
        btn.tintColor = .black
        btn.backgroundColor = .loginButton
        btn.layer.cornerRadius = 10
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return btn
    }()
    
    let userName = createTextField(placeHolderText: "Username", secureTextStatus : false)
    private let password = createTextField(placeHolderText: "Password", secureTextStatus : true)
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        axis = .vertical
        distribution = .fillEqually
        spacing = 10
        
        [userName, password, submitButton].forEach { (views) in
            addArrangedSubview(views)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
