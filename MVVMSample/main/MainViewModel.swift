//
//  MainViewModel.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import Foundation
import UIKit

class MainViewModel {

    var user : User?
   
    var backgroundCollor : UIColor?
   
    var delegate: MainViewDelegate?
    
    init(user: User, backgroundColor: UIColor, delegate: MainViewDelegate) {
        self.user = user;
        self.backgroundCollor = backgroundColor;
        self.delegate = delegate
    }
}
