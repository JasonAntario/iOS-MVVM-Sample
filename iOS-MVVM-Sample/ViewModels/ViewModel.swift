//
//  ViewModel.swift
//  iOS-MVVM-Sample
//
//  Created by Dmitry Sankovsky on 3.06.22.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String){
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login is failed"
            statusColor.value = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else {
            statusText.value = "You successfully logged in!"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}
