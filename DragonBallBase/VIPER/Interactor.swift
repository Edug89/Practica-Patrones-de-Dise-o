//
//  Interactor.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 17/1/23.
//

import Foundation


// object
// protocol
// Referencia al presenter
// Llamadas API

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getHeroes()
}

class HeroInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getHeroes() {
        let myToken = "eyJ0eXAiOiJKV1QiLCJraWQiOiJwcml2YXRlIiwiYWxnIjoiSFMyNTYifQ.eyJlbWFpbCI6ImVkdWdwcm9kdWNlQGdtYWlsLmNvbSIsImV4cGlyYXRpb24iOjY0MDkyMjExMjAwLCJpZGVudGlmeSI6IkQzMzg3RjlDLTJGMTQtNDlEQi1BNkQ3LThEODY2RjEzQ0JFQiJ9.4MyBIZ67VVzmZGCTNiNI55QsN9L-ph2VUx44vzVHymQ"
        
        ApiClient(token: myToken).getHeroes { [weak self] heroes, error in
            if (error != nil) {
                self?.presenter?
                    .interactorDidFechHeroes(with: .failure(error!))
                return
            }
            self?.presenter?.interactorDidFechHeroes(with: .success(heroes))
        }
    }
}
