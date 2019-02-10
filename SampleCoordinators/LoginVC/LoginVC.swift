//
//  LoginVC.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

final class LoginVC : UIViewController {
    
    weak var coordinator : LoginCoordinator?
    
    private let subViews = LoginViews()
    override func viewDidLoad() {
        setupViews()
    }
   
    func setupViews() {
        hideKeyboardWhenTappedAround()
        view.backgroundColor = .homeVC
        view.addSubview(subViews)
        subViews.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 175))
        subViews.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        subViews.submitButton.addTarget(self, action: #selector(submit), for: .touchUpInside)
    }
    
    @objc func submit() {
        let passText = "Successfull Login with \n\n \(subViews.userName.text ?? "Empty Field")"
        coordinator?.loginCompleted(text: passText)
    }
}
