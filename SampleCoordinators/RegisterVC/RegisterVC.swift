//
//  RegisterVC.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class RegisterVC : UIViewController {
    
    weak var coordinator : RegisterCoordinator?
    private let subViews = RegisterViews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        hideKeyboardWhenTappedAround()
        view.backgroundColor = .registerVC
        view.addSubview(subViews)
        subViews.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 200))
        subViews.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        subViews.registerButton.addTarget(self, action: #selector(register), for: .touchUpInside)
    }
    
    @objc func register() {
        let passText = "Successfull Register with \n\n \(subViews.userName.text ?? "Empty Field")"
        coordinator?.registerCompleted(text: passText)
    }
}
