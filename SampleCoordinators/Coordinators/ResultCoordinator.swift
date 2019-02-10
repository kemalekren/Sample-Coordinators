//
//  ResultCoordinator.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class ResultCoordinator : Coordinator {
    
    weak var parentCoordinator : MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    var username : String
    init(navigationController : UINavigationController, username : String) {
        self.navigationController = navigationController
        self.username = username
        
    }
    
    private func navBarSetup(){
        navigationController.isNavigationBarHidden = false
        navigationController.navigationBar.barTintColor = .resultVC
        navigationController.navigationBar.tintColor = .white
    }
    
    func start() {
        let vc = ResultVC()
        vc.userValue = username
        vc.coordinator = self
        navBarSetup()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func dismissCompleted() {
        parentCoordinator?.start()
    }
}
