//
//  HeroDetailViewController.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 17/1/23.
//

import Foundation
import UIKit

class HeroDetailViewController: UIViewController {
    
    var mainView: HeroDetailView { self.view as! HeroDetailView } // convertimos la vista de la clase tableView a HeroesList View
    
    init(HeroDetailModel: HeroModel) {
        super.init(nibName:nil, bundle: nil)
        mainView.configure(HeroDetailModel) //Aquí le indicas que te coja el heroe que coges
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func loadView() {
        view = HeroDetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
