//
//  ResultVC.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    weak var parentCoordinator : MainCoordinator?
    weak var coordinator : ResultCoordinator?
    var userValue = "Something Wrong"
    private let subViews = ResultViews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        view.backgroundColor = .resultVC
        view.addSubview(subViews)
        subViews.resultLabel.text = userValue
        subViews.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30), size: CGSize(width: 0, height: view.frame.height / 4))
        subViews.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        subViews.dismissButton.addTarget(self, action: #selector(dismissAction), for: .touchUpInside)
    }
    
    @objc func dismissAction() {
       coordinator?.dismissCompleted()
    }
}
