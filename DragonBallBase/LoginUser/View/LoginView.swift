//
//  LoginView.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 12/1/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let headerTag = {
        let label = UILabel()
        label.text = "Login to enter"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let loginButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.borderWidth = .init(2)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let errormessageView = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getLoginButtonView() -> UIButton{
            return loginButton
        }
      
    func getEmailView()-> UITextField{
        return emailTextField
    }
    
    func getPasswordView()-> UITextField{
        return passwordTextField
    }
    
    func getMessageView()-> UILabel{
        return errormessageView
    }

    
    func setUpViews() {
        backgroundColor = .systemGray5
        
        addSubview(headerTag)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(errormessageView)
        
        NSLayoutConstraint.activate([
            headerTag.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            headerTag.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerTag.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerTag.heightAnchor.constraint(equalToConstant: 40),
            
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.widthAnchor.constraint(equalToConstant: 200),
            
            passwordTextField.topAnchor.constraint(equalTo: topAnchor, constant: 300),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.widthAnchor.constraint(equalToConstant: 200),
            
            loginButton.topAnchor.constraint(equalTo: topAnchor, constant: 450),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            
            errormessageView.widthAnchor.constraint(equalToConstant: 20),
            errormessageView.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 80),
            errormessageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            errormessageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            errormessageView.heightAnchor.constraint(equalToConstant: 180),
            errormessageView.widthAnchor.constraint(equalToConstant: 20)

        ])
        
    }
}



