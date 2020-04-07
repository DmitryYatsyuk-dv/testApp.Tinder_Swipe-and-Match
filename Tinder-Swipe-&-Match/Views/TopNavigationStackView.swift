//
//  TopNavigationStackView.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 07/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    
    let settingsButtons = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "appIcon"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        fireImageView.contentMode = .scaleAspectFit
        
        settingsButtons.setImage(#imageLiteral(resourceName: "topLeftProfile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "topRightMessage").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButtons, UIView(),  fireImageView, UIView(), messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
}
