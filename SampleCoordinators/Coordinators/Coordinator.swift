//
//  Coordinator.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

protocol Coordinator : AnyObject {
    var childCoordinators : [Coordinator] {get set}
    var navigationController : UINavigationController {get set}
   
    func start()
}
