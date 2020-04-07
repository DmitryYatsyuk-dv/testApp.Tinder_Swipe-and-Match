//
//  ViewController.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 07/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let blueView = UIView()
    let buttonsStackView = HomeBottomControlsStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        blueView.backgroundColor = .blue
        setupLayout()

    }
    
    //MARK: Fileprivate
    fileprivate func setupLayout() {
           let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
           overallStackView.axis = .vertical
           view.addSubview(overallStackView)
           overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
       }

}

