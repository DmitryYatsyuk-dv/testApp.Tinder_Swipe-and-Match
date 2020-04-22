//
//  RegistrationViewModel.swift
//  Tinder-Swipe-&-Match
//
//  Created by Lucky on 20/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var bindableImage = Bindable<UIImage>()
    
    
//    var image: UIImage? {
//        didSet {
//            imageObserver?(image)
//        }
//    }
//    var imageObserver: ((UIImage?) -> ())?
    
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var pw: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && pw?.isEmpty == false
        
        bindableIsFormValid.value = isFormValid
//        isFormValidObserver?(isFormValid)

    }
    
    var bindableIsFormValid = Bindable<Bool>()
    
    // Reactive Programming
    
//    var isFormValidObserver: ((Bool) -> ())?
    
}
