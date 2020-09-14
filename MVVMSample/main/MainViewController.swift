//
//  ViewController.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewDelegate {
    
    @IBOutlet weak var qweLabel: UILabel!
    
    @IBOutlet weak var qweIndicator: UIActivityIndicatorView!
 
    var viewModel : MainViewModel?{
        didSet{
            self.qweLabel.text = viewModel?.user?.name
            self.qweIndicator.isHidden = true
            self.qweIndicator.stopAnimating();
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        let user = User(name: "julio", age: 40, birthDay: "01/10/2020");
        self.viewModel = MainViewModel(user : user, backgroundColor: .white, delegate: self)
    }
    
    @IBAction func updateButton(_ sender: Any) {
        qweIndicator.startAnimating();
        DispatchQueueHelper.delay(bySeconds: 3.0, dispatchLevel: .background, completion: {
            let message = "Hello there";
            DispatchQueueHelper.delay(bySeconds: 0.0, completion: {
                self.qweLabel.text = message
                self.qweIndicator.stopAnimating();
                self.qweIndicator.isHidden = true;
            })
        });
        
        self.qweLabel.text = "OI!";
        self.qweIndicator.isHidden = false
        self.qweIndicator.startAnimating();
    }
}

