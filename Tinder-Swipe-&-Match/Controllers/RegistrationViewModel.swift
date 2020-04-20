//
//  RegistrationViewModel.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 20/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var pw: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && pw?.isEmpty == false
        
        isFormValidObserver?(isFormValid)

    }
    
    // Reactive Programming
    var isFormValidObserver: ((Bool) -> ())?
    
}
