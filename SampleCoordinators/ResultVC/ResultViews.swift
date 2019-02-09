//
//  ResultViews.swift
//  SampleCoordinators
//
//  Created by Esat Kemal Ekren on 9.02.2019.
//  Copyright © 2019 Esat Kemal Ekren. All rights reserved.
//

import UIKit

class ResultViews : UIStackView {
    
    
    let dismissButton : UIButton = {
        
        let btn = UIButton(type: .system)
        btn.setTitle("Dismiss", for: .normal)
        btn.backgroundColor = .registerButton
        btn.tintColor = .black
        btn.layer.cornerRadius  = 10
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return btn
    }()
    
    let resultLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.adjustsFontSizeToFitWidth = true
        lbl.textAlignment = .center
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        distribution = .fillEqually
        spacing = 40
        
        [resultLabel, dismissButton].forEach { (views) in
            addArrangedSubview(views)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
