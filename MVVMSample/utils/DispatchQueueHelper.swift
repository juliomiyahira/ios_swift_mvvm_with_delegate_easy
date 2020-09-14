//
//  DispatchQueueHelper.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import Foundation


class DispatchQueueHelper {
    
    fileprivate init() {
        
    }
    
    public static func delay(bySeconds seconds: Double, dispatchLevel: DispatchLevel = .main, completion: @escaping()-> ()){
        let dispatchTime = DispatchTime.now() + seconds;
        dispatchLevel.dispatchQueue.asyncAfter(deadline: dispatchTime, execute: completion);
    }
    
    public enum DispatchLevel {
        case main, userInterative, userInitialed, utility, background
        var dispatchQueue : DispatchQueue {
            switch self {
            case .main:
                return DispatchQueue.main
            case .userInterative:
                return DispatchQueue.global(qos: .userInteractive);
            case .userInitialed:
                return DispatchQueue.global(qos: .userInitiated)
            case .utility:
                return DispatchQueue.global(qos: .utility)
            case .background:
                return DispatchQueue.global(qos: .background)
            }
        }
    }
}
