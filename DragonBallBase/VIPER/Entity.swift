//
//  Entity.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 17/1/23.
//

import Foundation


// Model
struct Hero: Codable {
    let photo: String
    let id: String
    let favorite: Bool
    let name: String
    let description: String
}
