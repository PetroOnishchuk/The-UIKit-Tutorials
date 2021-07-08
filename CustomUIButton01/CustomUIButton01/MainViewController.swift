//
//  MainViewController.swift
//  CustomUIButton01
//
//  Created by Petro Onishchuk on 6/29/21.
//

import UIKit



class MainViewController: UIViewController {
    
    
    let customUIButton = CustomUIButton()
    
    let buttonWidth: CGFloat = 150
    let buttonHeight: CGFloat = 50
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        //setupCustomUIButton()
        setupConfigurationButton()
    }
    
    
    
    func setupCustomUIButton() {
        view.addSubview(customUIButton)
        customUIButton.translatesAutoresizingMaskIntoConstraints = false
        
        // V.1 Set constraints
        NSLayoutConstraint.activate([
            customUIButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customUIButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customUIButton.widthAnchor.constraint(equalToConstant: buttonWidth),
            customUIButton.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
        
        // V.2 Set constraints
        
        //        customUIButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        customUIButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //        customUIButton.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        //        customUIButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        
        // Set frame
        //        customUIButton.frame = CGRect(x: (view.frame.size.width / 2) - (buttonWidth / 2), y: (view.frame.size.height / 2) - (buttonHeight / 2), width: buttonWidth, height: buttonHeight)
        
    }
    
    //MARK: Setup Configuration Button
    
    func setupConfigurationButton() {
        view.addSubview(customUIButton)
        customUIButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            customUIButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customUIButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
