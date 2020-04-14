//
//  User.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 11/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

struct User: ProducesCardViewModel {
    
    // defining our properties from model layer
    
    let name: String
    let age: Int
    let profession: String
    let imageNames: [String]
    
    func toCardViewModel() -> CardViewModel {

        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])

        attributedText.append(NSMutableAttributedString(string: "  \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .medium)]))

        attributedText.append(NSMutableAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .medium)]))

        return CardViewModel(imageNames: imageNames, attributedString: attributedText, textAlignment: .left)
    }
}
