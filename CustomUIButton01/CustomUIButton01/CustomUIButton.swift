//
//  CustomUIButton.swift
//  CustomUIButton01
//
//  Created by Petro Onishchuk on 6/29/21.
//

import UIKit



class CustomUIButton: UIButton {
    
    var colors: [UIColor] = [.red, .gray, .green, .blue, .yellow, .orange, .systemPink, .purple, .magenta, .lightGray, .white, .brown, .systemIndigo, .systemPink, .systemTeal]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //setupButton()
        setupConfigurationButton()
    }
    
    
    func setupButton() {
        setTitle("Tap the Button", for: .normal)
        setTitleColor(.black, for: .normal)
        backgroundColor = .lightGray
        layer.cornerRadius = 25
        layer.borderWidth = 2
        layer.borderColor = UIColor.green.cgColor
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        backgroundColor = colors.shuffled()[0]
    }
    
    
    func setupConfigurationButton() {
        var configuration = UIButton.Configuration.gray()
        configuration.cornerStyle = .capsule
        configuration.baseForegroundColor = UIColor.black
        configuration.buttonSize = .large
        configuration.title = "Tap the Button"
        self.configuration = configuration
        addTarget(self, action: #selector(buttonConfigurationTapped), for: .touchUpInside)
    }
    
    @objc func buttonConfigurationTapped() {
        self.configuration?.baseBackgroundColor = colors.shuffled()[0]
    }
    
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
