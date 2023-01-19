//
//  HeroesListTableViewDelegate.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 17/1/23.
//

import Foundation
import UIKit

class HeroesListTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOncell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Cuando toco en una celda expecificada
        // Open another view controller to show the hero details
        
        didTapOncell?(indexPath.row) //Una vez tocamos una celda, se viene hasta aquí
    }
    
}


