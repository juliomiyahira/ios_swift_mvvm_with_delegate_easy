//
//  LoginViewModel.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import Foundation


class LoginViewModel {
    
    var delegate : LoginViewDelegate?
    
    init(delegate: LoginViewDelegate) {
        self.delegate = delegate
    }
}
