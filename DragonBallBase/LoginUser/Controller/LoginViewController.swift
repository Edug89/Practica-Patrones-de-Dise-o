//
//  LoginViewController.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 18/1/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var mainView: LoginView { self.view as! LoginView }
    
    var viewModel: HeroListViewModel?
        weak var loginButton: UIButton!
        weak var passwordTextField: UITextField!
        weak var emailTextField: UITextField!
        var login: String?
    
    
    override func loadView() {
        view = LoginView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonTapped()
        //setUpUpdateUI()
    }
    
    func setUpUpdateUI(){
            viewModel = HeroListViewModel()
            //Preparando para recibir datos del viewModel
            
            viewModel?.updateLogin = { [weak self] login in
                self?.login = login
                print(login)
            }
        }
        
        func getLogin(email: String, password: String){

            viewModel?.fetchLogin(email: email , password: password)
            
        }
            
        func loginButtonTapped(){
            
            let viewLogin = LoginView()
            viewLogin.buttonHandler = {
                
            guard let email = self.emailTextField.text,
            !email.isEmpty else {
                print("email is empty")
             return
             }
            guard let password = self.passwordTextField.text, !password.isEmpty else {
             print("Password is empty")
             return
             }

              print("Llego a viewController")
              self.getLogin(email: email, password: password)
            }
         }
    
}
