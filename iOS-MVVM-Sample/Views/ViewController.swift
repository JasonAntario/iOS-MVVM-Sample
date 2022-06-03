//
//  ViewController.swift
//  iOS-MVVM-Sample
//
//  Created by Dmitry Sankovsky on 3.06.22.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = ViewModel()
    
    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        viewModel.userButtonPressed(login: loginField.text ?? "", password: passwordField.text ?? "")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
    private func initialState(){
        statusLabel.text = ""
    }

    func bindViewModel(){
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        }
    }
}
