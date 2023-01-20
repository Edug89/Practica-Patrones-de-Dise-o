//
//  HeroListViewModel.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 16/1/23.
//

import Foundation
//En el ViewMoldel no debermiamos tener nunca UIKIT

class HeroListViewModel: NSObject {
    
    override init() {
//        super.init()
    }
    
    var updateUI: ((_ heroes: [HeroModel]) -> Void)? //Actualiza la lista de heroes
    
    var updateLogin: ((_ token: String)->Void)?
    
    func fetchData() {
        
        let myToken = "eyJ0eXAiOiJKV1QiLCJraWQiOiJwcml2YXRlIiwiYWxnIjoiSFMyNTYifQ.eyJlbWFpbCI6ImVkdWdwcm9kdWNlQGdtYWlsLmNvbSIsImV4cGlyYXRpb24iOjY0MDkyMjExMjAwLCJpZGVudGlmeSI6IkQzMzg3RjlDLTJGMTQtNDlEQi1BNkQ3LThEODY2RjEzQ0JFQiJ9.4MyBIZ67VVzmZGCTNiNI55QsN9L-ph2VUx44vzVHymQ"
        
        let apiClient = ApiClient(token: myToken)
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
        }
    }
    
    func fetchLogin(email: String, password: String){
            
            let email: String? = email
            let password: String? = password
            
            let myToken = "eyJhbGciOiJIUzI1NiIsImtpZCI6InByaXZhdGUiLCJ0eXAiOiJKV1QifQ.eyJlbWFpbCI6ImNhbWlsYWxsb3Blejk1QGdtYWlsLmNvbSIsImlkZW50aWZ5IjoiMUVDOTlEMDMtNEMxMy00RkU1LUIwREEtQkJCNDFGQUUzN0RGIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.exgpZhqVdpjD3S4jQ--qNVTrrhXHCrKawiI_tpHQexs"
            
            let apiClient = ApiClient(token: myToken)

            apiClient.login(user: email ?? "edugproduce@gmail.com", password: password ?? "200789") { loginToken, error in
                
                debugPrint("PMG: \(loginToken ?? "No login")")
                
                debugPrint("PMG:", error ?? "No error")
                
                self.updateLogin?(loginToken ?? "No token")
            }
        }
    
}
