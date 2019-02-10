//
//  LoginCoordinator.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class LoginCoordinator : Coordinator {
    
    weak var parentCoordinator : MainCoordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    private func navBarSetup(){
        navigationController.isNavigationBarHidden = false
        navigationController.navigationBar.barTintColor = .homeVC
        navigationController.navigationBar.tintColor = .white
    }

    
    func start() {
        let vc = LoginVC()
        vc.coordinator = self
        navBarSetup()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func loginCompleted(text : String){
        let child = ResultCoordinator(navigationController: navigationController, username: text)
        child.parentCoordinator = parentCoordinator
        childCoordinators.append(child)
        child.start()
    }
}
