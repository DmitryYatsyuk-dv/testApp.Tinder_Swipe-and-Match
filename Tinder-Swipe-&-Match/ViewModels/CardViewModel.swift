//
//  CardViewModel.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 11/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {

    // We'll define the properties that are view will display/render out
    let imageName: String
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
}

// What exactly do we do with this card view model thing ?!

