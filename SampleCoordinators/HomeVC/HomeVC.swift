//
//  ViewController.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

final class HomeVC: UIViewController {
    
    private let subviews = HomeView()
    weak var coordinator : MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = true
    }
    
    private func setupViews(){

        view.backgroundColor = UIColor.homeVC
        view.addSubview(subviews)
        subviews.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40), size: CGSize(width: 0, height: 200))
        subviews.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        subviews.loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        subviews.registerButton.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
    }
    
    @objc func loginAction() {
        coordinator?.login()
    }
    
    
    @objc func registerAction() {
         coordinator?.register()
    }
}

