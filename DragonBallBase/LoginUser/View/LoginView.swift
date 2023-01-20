//
//  LoginView.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 12/1/23.
//

import UIKit

class LoginView: UIView {
    let loginImage = {
        var imageView = UIImageView()
        imageView.backgroundColor = .systemRed
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let emailTextField = {
        var textField = UITextField()
        textField.placeholder = "Username"
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField = {
        var textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var buttonHandler: (() -> Void)?
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        
        var configuration = UIButton.Configuration.filled()
        configuration.title = "LOGIN"
        button.addTarget(LoginView.self, action: #selector(loginAction), for: .touchUpInside)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func loginAction(sender: UIButton!) {
                 print("Button Clicked")
                 buttonHandler?()
            }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        addSubview(loginImage)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            loginImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            loginImage.heightAnchor.constraint(equalToConstant: 900),
            loginImage.widthAnchor.constraint(equalToConstant: 900),
            
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 250),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            emailTextField.widthAnchor.constraint(equalToConstant: 200),
            
            passwordTextField.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.widthAnchor.constraint(equalToConstant: 200),
            
            loginButton.topAnchor.constraint(equalTo: topAnchor, constant: 450),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 30),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
//
        ])
        
    }
}



